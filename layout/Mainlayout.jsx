import { useNavigate } from "react-router-dom";
import Content from "../src/component/Content/Content";
import Nav from "../src/component/Nav/Nav";
import Sidebar from "../src/component/Sidebar/Sidebar";
function Mainlayout({ onSearch , toggleSidebar, isSidebarOpen  }) {
  const navigate = useNavigate();  // ใช้ useNavigate เพื่อเปลี่ยนหน้า

  const handleSearchResults = (results) => {
    // เมื่อได้รับผลลัพธ์จาก onSearch, ทำการเปลี่ยนหน้าไปที่ /results
    onSearch(results);
    navigate('/results');  // เปลี่ยนหน้าไปที่ /results
  };

  return (
    <section id="main-layout">
         <Nav onSearch={handleSearchResults} toggleSidebar={toggleSidebar}></Nav>
         {isSidebarOpen &&<Sidebar />}
         <Content></Content>
    </section>
  );
}

export default Mainlayout;