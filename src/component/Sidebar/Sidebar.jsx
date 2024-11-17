import { useEffect, useState } from 'react';
import "./SidebarStyle.css";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faHouse } from '@fortawesome/free-solid-svg-icons'
import { faTableList } from '@fortawesome/free-solid-svg-icons'
import { faCompactDisc } from '@fortawesome/free-solid-svg-icons'
import { faRadio } from '@fortawesome/free-solid-svg-icons'
function Sidebar() {
  const[subscribe, setSubscribe] = useState([]);
  useEffect(() => {
    const fetchSubscribe = async () => {
      try {
        const data = await fetch("http://localhost:3000/subscribe?users_id=1");
        if (!data.ok) {
          throw new Error("Failed to fetch subscribe");
        }
        const json = await data.json();
        setSubscribe(json);
        
      } catch (error) { 
        console.error("Error fetching videos:", error);
      }
    };

    fetchSubscribe();
  }, []);
  return (
    <section id="Sidebar" >
      <div className="-side-pnr">
        <a href="/" className="-item">
        <div className="-icon">
        <FontAwesomeIcon icon={faHouse} />
        </div>
        <div className="-text">หน้าแรก</div>
        </a>
        <a href="#" className="-item">
        <div className="-icon">
        <FontAwesomeIcon icon={faRadio} />
        </div>
        <div className="-text">Short</div>
        </a>
        <a href="#" className="-item">
        <div className="-icon">
        <FontAwesomeIcon icon={faTableList} />
        </div>
        <div className="-text">การติดตาม</div>
        </a>
        <a href="#" className="-item">
        <div className="-icon">
        <FontAwesomeIcon icon={faCompactDisc} />
        </div>
        <div className="-text">YouTube Music</div>
        </a>
      </div>
      <div className="-side-sec">
        <div className="-text">การติดตาม</div>
        {subscribe.map((subscribe, index) => (
        <a href="" className="-item" key={index} subscribe={subscribe}>

        <div className="-icon">
          <img src={subscribe.profile_chanel_url} alt="" />
        </div>
        <div className="-text">{subscribe.name_chanel}</div>
        <div className="-status">
          
        </div>
      </a>
))}

      </div>
    </section>
  )
}

export default Sidebar