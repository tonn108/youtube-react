import { useState } from 'react';
import "./NavStyle.css";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faMicrophone, faMagnifyingGlass, faVideo, faBell, faBars } from '@fortawesome/free-solid-svg-icons';
import { useNavigate } from "react-router-dom";
function Nav({ onSearch , toggleSidebar}) { 
  const navigate = useNavigate();
 // console.log(onSearch); // ใช้ destructuring props
  const [searchTerm, setSearchTerm] = useState("");
  const handleSearch = async () => {
    try {
      const response = await fetch(`http://localhost:3000/result?seach_query=${searchTerm}`);
      if (!response.ok) {
        throw new Error("Failed to fetch search results");
      }
      const data = await response.json();

      if (onSearch) {  // เรียกใช้ onSearch โดยตรง
        console.log("onSearch function is available.");
        onSearch(data);
      } else {
        console.log("onSearch function is not available.");
      }
    } catch (error) {
      console.error("Error fetching search results:", error);
    }
  };
  return (
    <section id="Nav">
      <div className="-brand">
        <div className="-ham">
          <div className="-btn-text" onClick={toggleSidebar}>
            <FontAwesomeIcon icon={faBars} />
          </div>
        </div>
        <div className="-logo" onClick={() => navigate("/")} // เปลี่ยนเส้นทางไปยัง "/"
      style={{ cursor: "pointer" }} // เพื่อให้ดูเหมือนคลิกได้ 
      >
         <img src="/image/yt.png" alt="" />
        </div>
      </div>

      <div className="-center">
        <div className="-search">
          <div className="-search-box">
            <input
              type="text"
              className="-search-input"
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
              placeholder="ค้นหา..."
            />
          </div>
          <div className="-btn">
            <FontAwesomeIcon icon={faMagnifyingGlass} onClick={handleSearch}/>
          </div>
        </div>
        <div className="-voice">
          <div className="-text">
            <FontAwesomeIcon icon={faMicrophone} />
          </div>
        </div>
      </div>

      <div className="-end">
        <div className="-end-item">
          <div className="-text">
            <FontAwesomeIcon icon={faVideo} />
          </div>
        </div>
        <div className="-end-item">
          <div className="-text">
            <FontAwesomeIcon icon={faBell} />
          </div>
        </div>
        <div className="-end-item">
          <div className="-img">
            <img src="/image/pro1.jpg" alt="" />
          </div>
        </div>
      </div>
    </section>
  );
}

export default Nav;
