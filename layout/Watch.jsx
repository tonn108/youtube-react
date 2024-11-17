import { useNavigate, useParams } from "react-router-dom";
import { useState, useEffect } from "react";
import Nav from "../src/component/Nav/Nav";
import Sidebar from "../src/component/Sidebar/Sidebar";
import "../layout/Watch.css";
function Watch({ onSearch, toggleSidebar, isSidebarOpen }) {
  const navigate = useNavigate(); // ใช้สำหรับเปลี่ยนเส้นทาง
  const { v } = useParams(); // รับ video ID จาก URL
  const [shorts, setShorts] = useState([]); // สำหรับการเก็บข้อมูล Shorts
  const [watch, setWatch] = useState([]); // สำหรับการเก็บข้อมูล Video
  

  // ฟังก์ชัน fetch ข้อมูล video
  useEffect(() => {
    console.log(v); // ตรวจสอบว่า v ได้รับค่าหรือไม่
    const fetchWatch = async () => {
      try {
        const res = await fetch(`http://localhost:3000/watch?v=${v}`);
        if (!res.ok) {
          throw new Error("Failed to fetch videos");
        }
        const json = await res.json();
        if (Array.isArray(json)) {
          console.log(json);
          setWatch(json); // ตรวจสอบว่าข้อมูลที่ได้รับเป็น array
        } else {
          console.error("Received data is not an array:", json);
        }
      } catch (error) {
        console.error("Error fetching videos:", error);
      }
    };

    if (v) { // ตรวจสอบว่า v มีค่า ไม่เป็น undefined หรือ null
      fetchWatch();
    }

  }, [v]); // คอยติดตามการเปลี่ยนแปลงของ v

  // ฟังก์ชันค้นหา
  const handleSearch = (query) => {
    if (!query.trim()) {
      console.warn("Search query is empty");
      return;
    }

    fetch(`http://localhost:3000/search?q=${query}`)
      .then((response) => {
        if (!response.ok) {
          throw new Error("Failed to fetch search results");
        }
        return response.json();
      })
      .then((results) => {
        console.log("Search results fetched:", results);
        onSearch(results); // ส่งผลลัพธ์ไปยัง parent component
        navigate("/results"); // เปลี่ยนหน้าไปที่ /results
      })
      .catch((error) => console.error("Error fetching search results:", error));
  };

  // ฟังก์ชัน fetch ข้อมูล Shorts
  useEffect(() => {
    const fetchShorts = async () => {
      try {
        const data = await fetch("http://localhost:3000/short");
        if (!data.ok) {
          throw new Error("Failed to fetch shorts");
        }
        const json = await data.json();
        setShorts(json); // เก็บข้อมูล shorts
        console.log(json);
      } catch (error) {
        console.error("Error fetching shorts:", error);
      }
    };

    fetchShorts();
  }, []); // ใช้ [] เพื่อให้เพียงแค่ครั้งเดียวเมื่อ component โหลด

  // ฟังก์ชันแปลงวันที่การเผยแพร่
  const convertPublishDate = (date) => {
    const publishDate = new Date(date);
    const now = new Date();
    const timeDifference = now - publishDate;

    const seconds = Math.floor(timeDifference / 1000);
    const minutes = Math.floor(seconds / 60);
    const hours = Math.floor(minutes / 60);
    const days = Math.floor(hours / 24);
    const weeks = Math.floor(days / 7);
    const months = Math.floor(days / 30);
    const years = Math.floor(days / 365);

    if (years > 0) {
      return `เผยแพร่เมื่อ ${years} ปีที่แล้ว`;
    } else if (months > 0) {
      return `เผยแพร่เมื่อ ${months} เดือนที่แล้ว`;
    } else if (weeks > 0) {
      return `เผยแพร่เมื่อ ${weeks} สัปดาห์ที่แล้ว`;
    } else if (days > 0) {
      return `เผยแพร่เมื่อ ${days} วันที่แล้ว`;
    } else if (hours > 0) {
      return `เผยแพร่เมื่อ ${hours} ชั่วโมงที่แล้ว`;
    } else if (minutes > 0) {
      return `เผยแพร่เมื่อ ${minutes} นาทีที่แล้ว`;
    } else {
      return "เผยแพร่เมื่อไม่กี่วินาทีที่แล้ว";
    }
  };

  const viewCountFormatter = (viewCount) => {
    if (viewCount >= 1_000_000_000) {
      return `${(viewCount / 1_000_000_000).toFixed(viewCount % 1_000_000_000 === 0 ? 0 : 1)} พันล้าน ครั้ง`;
    } else if (viewCount >= 1_000_000) {
      return `${(viewCount / 1_000_000).toFixed(viewCount % 1_000_000 === 0 ? 0 : 1)} ล้าน ครั้ง`;
    } else if (viewCount >= 100_000) {
      return `${(viewCount / 100_000).toFixed(viewCount % 100_000 === 0 ? 0 : 1)} แสน ครั้ง`;
    } else if (viewCount >= 10_000) {
      return `${(viewCount / 10_000).toFixed(viewCount % 10_000 === 0 ? 0 : 1)} หมื่น ครั้ง`;
    } else if (viewCount >= 1_000) {
      return `${(viewCount / 1_000).toFixed(viewCount % 1_000 === 0 ? 0 : 1)} พัน ครั้ง`;
    } else {
      return `${viewCount} ครั้ง`;
    }
  };

  const likeCountFormatter = (likeCount) => {
    if (likeCount >= 1_000_000_000) {
      return `${(likeCount / 1_000_000_000).toFixed(likeCount % 1_000_000_000 === 0 ? 0 : 1)} พันล้าน ร้อย`;
    } else if (likeCount >= 1_000_000) {
      return `${(likeCount / 1_000_000).toFixed(likeCount % 1_000_000 === 0 ? 0 : 1)} ล้าน ร้อย`;
    } else if (likeCount >= 100_000) {
      return `${(likeCount / 100_000).toFixed(likeCount % 100_000 === 0 ? 0 : 1)} แสน ร้อย`;
    } else if (likeCount >= 10_000) {
      return `${(likeCount / 10_000).toFixed(likeCount % 10_000 === 0 ? 0 : 1)} หมื่น ร้อย`;
    } else if (likeCount >= 1_000) {
      return `${(likeCount / 1_000).toFixed(likeCount % 1_000 === 0 ? 0 : 1)} พัน ร้อย`;
    } else {
      return `${likeCount} ร้อย`;
    }
  };
   
  return (
    <section id="main-layout">
      <Nav toggleSidebar={toggleSidebar} onSearch={handleSearch}/>
      {isSidebarOpen &&<Sidebar />}
      <section id="Content">
        <section id="main-content">
        <section id="lef-content">        
          <div  className="-mainwatch">
          {watch.map((item , index) => (
            <div key={index} className="-video">
              <iframe
                  width="100%"
                  height="415"
                  src={`https://www.youtube.com/embed/${item.video_url.split('v=')[1]}?autoplay=1`} // แยก video ID จาก URL
                  title="YouTube video player"
                  frameBorder="0"
                  allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                  allowFullScreen
                ></iframe>
            </div>
             ))}
            </div>
           <div className="-detail-xx">
           {Array.isArray(watch) && watch.map((item, index) => (
          <div key={index} className="-detail">          
            <div  className="-title">
              {item.video_title}
              </div>
            <div className="-channel-item">
              <div className="-group">
              <div className="-cha-detail">
                  <div className="-img">
                    <img src={item.profile_chanel_url} alt="" />
                    </div>
                    <div className="-channel-name">
                      {item.name_chanel}
                      <div className="-follower">ผู้ติดตาม 2.5 ล้าน</div>
                    </div>
                      <div className="-btn-follow"> ติดตาม </div>       
                </div>
                <div className="-count">
                <div className="-like">{likeCountFormatter(item.like_count)}</div> 
                <div className="-dislike">0</div>
                </div>
               <div className="-three-btn">
                <div className="-share">
                  <div className="-btn-share">
                    share
                  </div>
                </div>
                <div className="-download">
                  <div className="-btn-download">
                    download
                  </div>
                </div>
                <div className="-more">
                  ...
                </div>
                </div>
              </div>
            </div>
            <div className="-description">
              <div className="-des-box">
                <div className="-detail-des">
                {item.video_description}
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem hic non expedita est ad unde 
                cumque dolorem corporis? Itaque modi, facilis blanditiis numquam perferendis sit. Sapiente harum esse omnis quae.              
                </div>
              </div>
            </div>
            <div  className="-comment">
              <div className="-com-title">ความคิดเห็น 108 รายการ</div>
               <div className="-com-img">
                <img src={item.profile_chanel_url} alt="" />
                <div className="-com-input">
                <input type="text" placeholder="เพิ่มความคิดเห็น"/> 
             </div>
                </div>
              <div className="-content-com">
                <div className="-com-detail">
                  <div className="-com-de-img"><img src={item.profile_chanel_url} alt="" /></div>
                  <div className="-com-content">
                    <div className="-com-id-cha">{item.username_chanel}</div>
                  <div className="-com-text">{item.content}</div>
                  </div>
                  <div className="-com-con-more">...</div>
                </div>
              </div>
          </div>
          </div>
          ))}   
           </div>
          </section>
          <section id="rigth-content">
          <div  className="-main-side">
          {watch.map((item , index) => (
            <div key={index} className="-review">           
            <div className="tag"></div>
            <div className="-review-video">
              <div className="-re-thumnail" >
                <img src={item.video_thumbnail} alt="" />
              </div>
              <div className="-re-tle-cha">
              <div className="-re-tle">{item.video_title}</div>
              <div className="-re-cha-name">{item.name_chanel}</div>
              <div className="-re-count">การดู {viewCountFormatter(item.view_count)} {convertPublishDate(item.video_update_at)}</div>
              </div>
            </div>
            </div>
            ))}
            <div className="-short">
              <div className="-main-review">
                <div  className="-short-logo">
                <div className="-text"> Short</div>
              </div>
              </div>
              <div className="-short-video">
              {shorts.map((short, index) => (
                <div key={index} className="-short-detail">
                  <div  className="-video-thumnail">
                    <img src={short.video_thumbnail} alt="" />
                    </div>
                  <div className="-short-video-title"> {short.video_title} </div>
                  <div className="-video-cout">การดู {viewCountFormatter(short.view_count)} {convertPublishDate(short.video_update_at)}</div>
                </div> 
              ))}
              </div>
            </div>
            <div className="-vlong">
            {watch.map((item , index) => (
              <div key={index} className="-main-vlong">
              <div className="-vlong-thumnail">
                <img src={item.video_thumbnail} alt="" />
              </div>
              <div className="-vlong-detail">
              <div className="-vlong-title">{item.video_title}</div>
              <div className="-vlong-user-name">{item.name_chanel}</div>
              <div className="-vlong-count">
                <div className="-view-count">การดู {viewCountFormatter(item.view_count)} {convertPublishDate(item.video_update_at)}</div>               
              </div>
              </div>
              </div>
              ))}
            </div>
          </div>
          </section>
          </section>
        </section>
      </section>
  );
}

export default Watch;