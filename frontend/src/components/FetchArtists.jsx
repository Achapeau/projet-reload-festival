import { useState, useEffect } from "react";
import axios from "axios";

import data from "../JSON/artistArray.json";

// Spotify clients credentials to request access token
function FetchArtists() {
  const credentials = {
    clientId: import.meta.env.VITE_SPOTIFY_ID,
    clientSecret: import.meta.env.VITE_SPOTIFY_SECRET,
  };

  const [artists, setArtists] = useState([]);

  useEffect(() => {
    // Request of access token
    axios
      .post(
        "https://accounts.spotify.com/api/token",
        {
          grant_type: "client_credentials",
          client_id: credentials.clientId,
          client_secret: credentials.clientSecret,
        },
        {
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        }
      )
      .then((res) => {
        // Créer un array de "requests" pour tous les artistes du festival
        const requests = data.map((item) =>
          axios.get(`https://api.spotify.com/v1/artists/${item.spotifyID}`, {
            headers: {
              Authorization: `Bearer ${res.data.access_token}`,
            },
          })
        );

        // Utiliser l'array de "requests" pour aller chercher les datas des artistes dans l'API et stocker ceux-ci dans "artists"
        axios
          .all(requests)
          .then((responses) => {
            setArtists(responses.map((response) => response.data));
          })
          .catch((error) => {
            console.error(error);
          });
      })
      .catch((error) => {
        console.error(error);
      });
  }, []);

  // retourne le tableau créé avec toutes les infos des artistes du festival
  return artists;
}

export default FetchArtists;
