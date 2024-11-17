import React from 'react'

function Shorts({shorts}) {
  const convertPublishDate = (date) =>{
    const publishDate = new Date(date)
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
    }

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
      }
  return (
    
    <div className="short">
    <div className="-thum">
    <img src={shorts.video_thumbnail} alt="" />
    </div>
    <div className="-about">
      <div className="-detial">
        <div href={shorts.video_url} className="-title" >{shorts.video_title} </div>
        <div className="-view">การดู {viewCountFormatter(shorts.view_count)} {convertPublishDate(shorts.video_create_at)}</div>
      </div>
      </div>
    </div>
   

  )
}

export default Shorts