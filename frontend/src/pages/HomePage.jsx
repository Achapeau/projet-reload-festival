import { useState, useEffect } from "react";

import FetchArtists from "../components/FetchArtists";
import MainArtistCard from "../components/MainArtistCard";
import styles from "../styles/HomePage.module.scss";

function HomePage() {
  const artists = FetchArtists();

  const mainArtists = [
    "Armin van Buuren",
    "Calvin Harris",
    "Tiësto",
    "Charlotte de Witte",
    "Benny Benassi",
    "Sound Of Legend",
    "The Chainsmokers",
    "DJ Snake",
    "Major Lazer",
    "Martin Garrix",
    "R3HAB",
  ];
  const mainArtistsData = [];
  mainArtists.forEach((item) => {
    mainArtistsData.push(artists.find((el) => el.name === item));
  });

  const [currentImageIndex, setCurrentImageIndex] = useState(0);

  useEffect(() => {
    const interval = setInterval(() => {
      setCurrentImageIndex((prevIndex) => {
        const nextIndex = prevIndex + 1;
        if (nextIndex >= mainArtistsData.length + 3) {
          // Si l'index atteint la dernière image, revenir à la première image
          return 0;
        }
        return nextIndex;
      });
    }, 2000);

    return () => {
      clearInterval(interval);
    };
  }, []);

  return (
    <div className={styles["home-page"]}>
      <h1 className={styles.titre}>Reload Fest</h1>
      <div className={styles.info}>
        <p className={styles.details}>19 & 20 Août 2023</p>
        <p className={styles.details}>Les Minimes</p>
        <p className={styles.details}>Larochelle</p>
      </div>
      <img
        className={styles.coverImg}
        src="https://images.unsplash.com/photo-1582711012124-a56cf82307a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1240&q=80"
        alt="Crowd in front of a stage"
      />
      <div className={styles.scrollBox}>
        {artists.length > 0 && (
          <div
            className={styles["main-artists"]}
            style={{
              transform: `translateX(-${currentImageIndex * 200}px)`,
              transition: "transform 2s",
            }}
          >
            {mainArtistsData.map((elem) => (
              <MainArtistCard
                name={elem.name}
                src={elem.images[1].url}
                id={elem.id}
              />
            ))}
          </div>
        )}
      </div>
    </div>
  );
}

export default HomePage;
