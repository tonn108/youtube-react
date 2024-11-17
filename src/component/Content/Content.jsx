import { useEffect, useState } from 'react';
import Tag from"../Tag/Tag";
import "./Contentstyle.css";
import CardVideo from '../Card/CardVideo';
import CardShorts from '../Card/CardShorts';
import { Link } from 'react-router-dom';
function Content() {
  const[videos, setVideos] = useState([]);
  const[shorts, setShorts] = useState([]);

    useEffect(() => {
    const fetchVideos = async () => {
      try {
        const data = await fetch("http://localhost:3000/");
        if (!data.ok) {
          throw new Error("Failed to fetch videos");
        }
        const json = await data.json();
        console.log(json);
        setVideos(json);
      } catch (error) {
        console.error("Error fetching videos:", error);
      }
    };

    fetchVideos();
  }, []);

  useEffect(() => {
    const fetchShorts = async () => {
      try {
        const data = await fetch("http://localhost:3000/short");
        if (!data.ok) {
          throw new Error("Failed to fetch shorts");
        }
        const json = await data.json();
        setShorts(json);
        console.log(json);
      } catch (error) {
        console.error("Error fetching shorts:", error);
      }
      
    };

    fetchShorts();
    
  }, []);
 
  return (
    <section id="Content">
      <Tag></Tag>
    <section id="the-card">
    {videos.map((video, index) => (
          <Link to={`/watch/${video.video_id}`} key={index}>
            <CardVideo Content={video}></CardVideo>
          </Link>
        ))}
    </section>
    <section id="Shorts">
    <div className="-section-title">[]short</div>
    <div className="short-wrap"> 
    {shorts.map((short, index) => (
            <Link to={`/watch/${short.video_id}`} key={index}>
              <CardShorts shorts={short}></CardShorts>
            </Link>
          ))}
    </div>
    </section>

    
    </section>
  )
}

export default Content