import { useEffect, useState } from "react";
import axios from "axios";

import styles from "../styles/ScheduleDisplay.module.scss";
import ArtistDescription from "../components/ArtistDescription";

function Schedule() {
  const [popUp, setPopUp] = useState(false);
  const [artistSelected, setArtistSelected] = useState("");

  const togglePopUp = (e) => {
    setPopUp(!popUp);
    setArtistSelected(e.target.innerHTML);
  };

  const [artistDatas, setArtistDatas] = useState([]);

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/artists`)
      .then((response) => {
        setArtistDatas(response.data);
      })
      .catch((error) => console.error(error));
  }, []);

  const newArtistData = artistDatas.map((el) => {
    const time = el.hour.split("h");
    const hours = parseInt(time[0], 10);
    const minutes = parseInt(time[1], 10);
    const numericTime = hours + minutes / 60;
    const numericEndTime = numericTime + 1.5;
    let endHour = "";
    let endMinutes = "";
    if (Number.isInteger(numericEndTime)) {
      if (numericEndTime >= 24) {
        endHour = "12";
        endMinutes = "00";
      } else {
        endHour = numericEndTime;
        endMinutes = "00";
      }
      endHour = numericEndTime;
      endMinutes = "00";
    } else if (numericEndTime >= 24) {
      endHour = "12";
      endMinutes = "30";
    } else {
      endHour = Math.trunc(numericEndTime);
      endMinutes = "30";
    }
    const endTime = `${endHour}h${endMinutes}`;

    return { ...el, numericHour: numericTime, endTime };
  });

  const days = ["Samedi", "Dimanche"];
  const stages = [
    "Flying High",
    "Sonic Sphere",
    "Electronic Dawn",
    "Sunset Stage",
  ];

  let time = 11;
  const timeline = [];
  for (let i = 0; i <= 25; i += 1) {
    if (i % 2 === 0) {
      timeline.push(`${time}:00`);
    } else {
      timeline.push(`${time}:30`);
      time += 1;
    }
  }
  timeline.push("12:00", "12:30");

  return (
    <>
      <div className={styles.schedule}>
        <h1 className={styles.titre}>Horaire</h1>
        {days.map((day) => (
          <>
            <h2 className={styles.show_day}>{day}</h2>
            <div className={styles.table}>
              <div className={styles.stages}>
                {stages.map((stage) => (
                  <h3 className={styles.stage}>{stage}</h3>
                ))}
              </div>

              <div className={styles.day} key={day}>
                {timeline.map((hour, index) => (
                  <p
                    className={styles.timeline}
                    style={{
                      gridColumnStart: index + 1,
                      gridColumnEnd: index + 2,
                    }}
                  >
                    {hour}
                  </p>
                ))}
                {stages.map((stage) => (
                  <>
                    {newArtistData
                      .filter(
                        (item) => item.day === day && item.stage === stage
                      )
                      .sort((a, b) => {
                        return parseFloat(a.hour) - parseFloat(b.hour);
                      })
                      .map((el) => (
                        <div
                          className={styles.show}
                          key={el.id}
                          style={{
                            gridColumn: `${
                              (el.numericHour - 11) * 2 + 1
                            } / span 3`,
                          }}
                        >
                          <p className={styles.showTime}>
                            {el.hour}-{el.endTime}
                          </p>
                          <button
                            className={styles.artist}
                            onClick={togglePopUp}
                            onKeyDown={togglePopUp}
                            type="button"
                          >
                            {el.name}
                          </button>
                        </div>
                      ))}
                  </>
                ))}
              </div>
            </div>
          </>
        ))}
      </div>

      {popUp && (
        <div className={styles.popUp}>
          <div className={styles.overlay} />
          <ArtistDescription
            togglePopUp={togglePopUp}
            artistSelected={artistSelected}
          />
        </div>
      )}
    </>
  );
}
export default Schedule;
