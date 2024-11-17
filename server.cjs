const express = require('express');
const mysql =require('mysql2');
const dotenv =require('dotenv');
const cors= require('cors');
const app = express();
dotenv.config();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

const db = mysql.createConnection({
    host:process.env.db_host,
    user:process.env.db_username,
    password:process.env.db_password,
    port:process.env.db_port,
    database:process.env.db_database
});

db.connect((err) => {
    if (err) {
        throw err;
    }});
    console.log('connection to database');

    app.get('/', (req,res) =>{
           const query =   `SELECT vl.video_id, vl.video_description, vl.video_title, vl.video_url, vl.video_thumbnail, vl.video_create_at,
           c.chanel_id, c.username_chanel, c.banner_url, c.name_chanel, c.description_chanel, c.profile_chanel_url,c.chanel_follower, p.view_count
           FROM video_long vl
           JOIN chanel c ON vl.chanel_id = c.chanel_id
           JOIN poppular p ON vl.video_id = p.video_id
           
           
           `;
       
    
    db.query (query,(err,result) => {
        if (err) {
            throw err;
        }
        res.send(result);
});
    });


    app.get('/short', (req,res) =>{
        const query =   `SELECT vs.video_id, vs.video_description, vs.video_title, vs.video_url, vs.video_thumbnail, vs.video_create_at,
        c.chanel_id, c.name_chanel, c.profile_chanel_url, p.view_count
        FROM video_short vs
        JOIN chanel c ON vs.chanel_id = c.chanel_id
        JOIN poppular p ON vs.video_id = p.video_id
        
        
        `;
    
 
 db.query (query,(err,result) => {
     if (err) {
         throw err;
     }
     res.send(result);
});
 });

    app.get('/subscribe',(req,res) => {
        const users_id = req.query.users_id;
        if (!users_id) {
            res.status(400).send('กรุณาระบุ user_id');
            return;
        }
        const query = `SELECT u.users_id, u.user_name, u.user_profile_picture,
        c.chanel_id, c.name_chanel, c.profile_chanel_url
        FROM users u
        JOIN chanel_subscribe cs ON u.users_id = cs.user_id
        JOIN chanel c ON cs.chanel_id = c.chanel_id
        WHERE u.users_id =?
        `;

        const values = [users_id];
        db.query(query, values, (err,result) => {
            if(err){
                console.error('เกิดข้อผิดพลาดในการดึงข้อมูล',err);
                res.status(500).send('เกิดข้อผิดพลาดในการดึงข้อมูล');
            }else{
                res.json(result);
            }
        });
    }
);

app.get('/result',(req,res) => {
    const {seach_query} = req.query;
 
    const query = `SELECT 
    vl.video_id, vl.video_thumbnail, vl.video_description, vl.video_title, vl.video_create_at,
    c.chanel_id, c.name_chanel, c.profile_chanel_url ,
    p.view_count
    FROM video_long vl
    JOIN chanel c ON vl.chanel_id = c.chanel_id
    JOIN poppular p ON vl.video_id = p.video_id
    WHERE vl.video_title LIKE ? OR c.name_chanel LIKE ?;
    `;

    db.query(query, [`%${seach_query}%` , `%${seach_query}%`], (err,result) => {
        if(err){
            console.error('เกิดข้อผิดพลาดในการดึงข้อมูล',err);
            res.status(500).send('เกิดข้อผิดพลาดในการดึงข้อมูล');
        }else{
            res.json(result);
        }
    });
}
);

app.get('/watch', (req, res) =>{
    console.log(req.query);
    const {v} = req.query;
    if(!v || isNaN(v)){
        res.status(400).send('invalid video parameters');
        return;
    }
const query = `SELECT
        vl.video_id,
        vl.video_title,
        vl.video_description,
        vl.video_duration,
        vl.video_thumbnail,
        vl.video_url,
        vl.video_update_at,
        c.name_chanel,
        c.username_chanel,
        c.profile_chanel_url, 
        p.view_count,
        p.like_count,
        (SELECT COUNT(*) FROM chanel_subscribe WHERE chanel_id = vl.chanel_id AND user_id =  ?) AS is_subscribed,
        (
        SELECT GROUP_CONCAT(CONCAT(u.user_name, ': ', cm.comment_text) ORDER BY  cm.comment_create_at SEPARATOR '\n')
        FROM comments cm
        JOIN users u ON cm.user_id = u.users_id
        WHERE cm.video_id =vl.video_id
        )AS comments

    FROM video_long vl
    JOIN chanel c ON vl.chanel_id = c.chanel_id
    JOIN poppular p ON vl.video_id = p.video_id
    WHERE vl.video_id =?
`;
db.query(query, [v , v], (err,result) => {
    if(err){
        console.error('เกิดข้อผิดพลาดในการค้นหา',err);
        res.status(500).send('เกิดข้อผิดพลาดในการค้นหา');
    }else{
        const video = result[0];
        const comments = video.comments.split('\n').map(comment => {
            const[user_name, content] = comment.split(': ');
            return{[user_name]: { content } };
        });
        video.comments = comments;
        res.json([video]);
    }
});
});
app.listen(3000,() =>{
    console.log('example app listening on port 3000');
});