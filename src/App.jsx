import { BrowserRouter, Route, Routes, useLocation  } from "react-router-dom";
import Mainlayout from "../layout/mainlayout";
import Searchpage from "../layout/Searchpage";
import Watch from "../layout/Watch";
import { useState, useEffect } from "react";  // ต้องใช้ useEffect ด้วย

function App() {
  const [isSidebarOpen, setSidebarOpen] = useState(true);
  const [searchResults, setSearchResults] = useState([]);
  
  return (
    <BrowserRouter>
      <AppWithRouter
        isSidebarOpen={isSidebarOpen}
        setSidebarOpen={setSidebarOpen}
        searchResults={searchResults}
        setSearchResults={setSearchResults}
      />
      <Routes>
        <Route
          path="/"
          element={
            <Mainlayout
              onSearch={(results) => setSearchResults(results)}
              toggleSidebar={() => setSidebarOpen((prev) => !prev)}
              isSidebarOpen={isSidebarOpen}
            />
          }
        />
        <Route
          path="/results"
          element={<Searchpage onSearch={setSearchResults} searchResults={searchResults} toggleSidebar={() => setSidebarOpen((prev) => !prev)} isSidebarOpen={isSidebarOpen}/>}
        />
        <Route path="/watch/:v" element={<Watch toggleSidebar={() => setSidebarOpen((prev) => !prev)} isSidebarOpen={isSidebarOpen} onSearch={setSearchResults} searchResults={searchResults}/>} />
      </Routes>
    </BrowserRouter>
  );
}

// ใช้ useLocation ใน component ที่ห่อหุ้มด้วย BrowserRouter
function AppWithRouter({ isSidebarOpen, setSidebarOpen, searchResults, setSearchResults }) {
  const location = useLocation();

  // ใช้ useEffect เพื่อตรวจสอบ path ปัจจุบันและปรับค่า isSidebarOpen
  useEffect(() => {
    if (location.pathname === "/watch") {
      setSidebarOpen(false); // ซ่อน sidebar ในหน้า /watch
    } else {
      setSidebarOpen(true); // แสดง sidebar ในหน้าอื่น ๆ
    }
  }, [location.pathname, setSidebarOpen]);

  return null;  // ไม่มี UI ใน component นี้ เพราะหน้าที่ของมันคือการทำงานหลังบ้าน
}

export default App;
