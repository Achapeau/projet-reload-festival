import React, { useEffect, useState } from "react";
import axios from "axios";

import styles from "../styles/Favorites.module.scss";

function Favorites() {
  const [favoriteDetails, setFavoriteDetails] = useState([]);

  useEffect(() => {
    const favorites = localStorage.getItem("favorites");
    const parsedFavorites = favorites ? JSON.parse(favorites) : [];

    const fetchFavoriteDetails = async () => {
      const favoriteDetailsPromises = parsedFavorites.map(async (favorite) => {
        try {
          const response = await axios.get(
            `${import.meta.env.VITE_BACKEND_URL}/name/${favorite.name}`
          );
          const artistDetails = response.data[0];
          return {
            ...favorite,
            day: artistDetails.day,
            hour: artistDetails.hour,
            stage: artistDetails.stage,
          };
        } catch (error) {
          console.error(error);
          return favorite;
        }
      });

      const resolvedFavoriteDetails = await Promise.all(
        favoriteDetailsPromises
      );
      setFavoriteDetails(resolvedFavoriteDetails);
    };

    fetchFavoriteDetails();
  }, []);

  const removeFavorite = (name) => {
    const updatedFavorites = favoriteDetails.filter(
      (favorite) => favorite.name !== name
    );
    localStorage.setItem("favorites", JSON.stringify(updatedFavorites));
    setFavoriteDetails(updatedFavorites);
  };
  favoriteDetails.sort((a, b) => {
    const dayComparison = b.day.localeCompare(a.day);
    if (dayComparison !== 0) {
      return dayComparison;
    }

    return a.hour.localeCompare(b.hour);
  });

  return (
    <div className={styles.container}>
      <h1 className={styles.title}>Mes favoris</h1>

      {favoriteDetails.map((favorite) => (
        <div key={favorite.name} className={styles.artistContainer}>
          <h2 className={styles.artistName}>{favorite.name}</h2>
          <p className={styles.details}>{favorite.day}</p>
          <p className={styles.details}>{favorite.hour}</p>
          <p className={styles.details}>{favorite.stage}</p>

          <button
            type="submit"
            className={styles.removeButton}
            onClick={() => removeFavorite(favorite.name)}
          >
            <span>Retirer</span>
          </button>
        </div>
      ))}
    </div>
  );
}

export default Favorites;
