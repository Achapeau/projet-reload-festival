import { AiFillCloseCircle, AiFillStar } from "react-icons/ai";
import Proptypes from "prop-types";
import { useState, useEffect } from "react";
import axios from "axios";

import FetchArtists from "./FetchArtists";

import styles from "../styles/ArtistDescription.module.scss";

function ArtistDescription({ togglePopUp, artistSelected }) {
  const [reloadArtistData, setReloadArtistData] = useState([]);

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/name/${artistSelected}`)
      .then((response) => {
        setReloadArtistData(response.data);
      })
      .catch((error) => console.error(error));
  }, []);

  const artists = FetchArtists();
  const artistSelectedData = artists.find(
    (el) => el.name.toLowerCase() === artistSelected.toLowerCase()
  );

  const [isFavorites, setIsFavorites] = useState(false);
  const addFavourite = () => {
    setIsFavorites(!isFavorites);
  };

  useEffect(() => {
    if (isFavorites) {
      const favorites = localStorage.getItem("favorites");
      const parsedFavorites = favorites ? JSON.parse(favorites) : [];

      const isAlreadyFavorite = parsedFavorites.some(
        (favorite) => favorite.name === artistSelectedData.name
      );

      if (!isAlreadyFavorite) {
        const updatedFavorites = [...parsedFavorites, artistSelectedData];
        localStorage.setItem("favorites", JSON.stringify(updatedFavorites));
      }
    }
  }, [isFavorites, artistSelectedData]);

  return (
    <div className={styles.popUp}>
      {artistSelectedData && reloadArtistData.length > 0 && (
        <>
          <div
            className={styles.overlay}
            role="button"
            onClick={togglePopUp}
            onKeyDown={togglePopUp}
            aria-label="Hide pop-up"
            tabIndex={0}
          />
          <div className={styles.descriptionCard}>
            {artists.length > 0 && reloadArtistData.length > 0 && (
              <>
                <h1 className={styles.artist_name}>
                  {artistSelectedData.name}
                </h1>
                <AiFillCloseCircle
                  className={styles.closeButton}
                  onClick={togglePopUp}
                />
                <AiFillStar
                  className={
                    isFavorites ? styles.starActive : styles.starInactive
                  }
                  onClick={addFavourite}
                />
                <div className={styles.informations}>
                  <div className={styles.showDetails}>
                    <p className={styles.jour}>{reloadArtistData[0].day}</p>
                    <p className={styles.heure}>{reloadArtistData[0].hour}</p>
                    <p className={styles["scène"]}>
                      {reloadArtistData[0].stage}
                    </p>
                  </div>
                  <div className={styles.details}>
                    <div className={styles.photo}>
                      <img
                        className={styles.ArtistPhoto}
                        src={artistSelectedData.images[1].url}
                        alt="name"
                      />
                      <h3 className={styles.real_name}>
                        {reloadArtistData[0].real_name}
                      </h3>
                      <h3 className={styles.origin}>
                        {reloadArtistData[0].origin}
                      </h3>
                    </div>
                    <p className={styles.description}>
                      {reloadArtistData[0].description}
                    </p>
                  </div>
                </div>
              </>
            )}
          </div>
        </>
      )}
    </div>
  );
}

ArtistDescription.propTypes = {
  togglePopUp: Proptypes.func.isRequired,
  artistSelected: Proptypes.string.isRequired,
};

export default ArtistDescription;
