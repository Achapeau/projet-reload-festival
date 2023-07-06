import { useState } from "react";
import styles from "../styles/Lineup.module.scss";

import ArtistDescription from "../components/ArtistDescription";

function LineUp() {
  // code ajouté Annie: gestion du pop-up
  const [popUp, setPopUp] = useState(false);
  const [artistSelected, setArtistSelected] = useState("");

  const togglePopUp = (e) => {
    setPopUp(!popUp);
    setArtistSelected(e.target.innerHTML);
  };
  // fin du code ajouté par Annie

  const [filter, setFilter] = useState("");
  const [stageFilter, setStageFilter] = useState("All");
  const [showAllArtists, setShowAllArtists] = useState(false);

  const data = [
    {
      day: "Saturday",
      stage: "Flying High",
      artistes: [
        "Illenium",
        "Kygo",
        "Skrillex",
        "Armin van Buuren",
        "Hardwell",
        "Nicky Romero",
        "Quintino",
        "Tiësto",
        "Calvin Harris",
        "Martin Garrix",
      ],
    },
    {
      day: "Saturday",
      stage: "Sonic Sphere",
      artistes: [
        "Afrojack",
        "Benny Benassi",
        "Jax Jones",
        "Paul Kalkbrenner",
        "Disclosure",
        "DJ Snake",
        "Charlotte de Witte",
        "Dr. Peacock",
        "Excision",
        "deadmau5",
      ],
    },
    {
      day: "Saturday",
      stage: "Electronic Dawn",
      artistes: [
        "Dash Berlin",
        "Nora En Pure",
        "Marshmello",
        "Zedd",
        "Alesso",
        "Major Lazer",
        "The Chainsmokers",
        "Sickick",
        "Deorro",
        "Timmy Trumpet",
      ],
    },
    {
      day: "Saturday",
      stage: "Sunset Stage",
      artistes: [
        "Sound Of Legend",
        "Da Tweekaz",
        "Sub Zero Project",
        "R3hab",
        "Ummet Ozcan",
        "Les Gordon",
        "NTO",
        "Nhyx",
        "Alle Farben",
        "Marcapasos",
      ],
    },
  ];

  const handleAllArtists = () => {
    setShowAllArtists(!showAllArtists);
  };

  let artists;
  if (showAllArtists) {
    artists = [...new Set(data.flatMap(({ artistes }) => artistes))].sort(
      (a, b) => a.localeCompare(b)
    );
  }
  const matchesFilter = (value, currentFilter) =>
    currentFilter === "All" || value === currentFilter;

  return (
    <>
      <div className={styles.body}>
        <div className={styles["lineup-block"]}>
          <h2>LINEUP</h2>
        </div>
        <div className={styles["box-filter"]}>
          <input
            className={styles.input}
            type="search"
            placeholder="Nom de l' artiste"
            value={filter}
            onChange={(e) => setFilter(e.target.value)}
          />
          <button
            className={`${styles["button-artistes"]} ${
              showAllArtists ? styles["active-artistes"] : ""
            }`}
            type="submit"
            onClick={handleAllArtists}
          >
            Artistes
          </button>
          <select
            className={styles["button-stage"]}
            onChange={(e) => setStageFilter(e.target.value)}
          >
            <option value="All">Toutes les scènes</option>
            <option value="Flying High">Flying High</option>
            <option value="Sonic Sphere">Sonic Sphere</option>
            <option value="Electronic Dawn">Electronic Dawn</option>
            <option value="Sunset Stage">Sunset Stage</option>
          </select>
        </div>
        <div className={styles.stage_content}>
          {showAllArtists
            ? artists
                .filter((artist) =>
                  artist.toLowerCase().includes(filter.toLowerCase())
                )
                .map((artist) => (
                  <button
                    className={styles.allArtist}
                    key={artist}
                    onClick={togglePopUp}
                    onKeyDown={togglePopUp}
                    type="button"
                  >
                    {artist}
                  </button>
                ))
            : data
                .filter(({ stage }) => matchesFilter(stage, stageFilter))
                .map(({ stage, artistes }) => (
                  <div className={styles.container} key={stage}>
                    <h4 className={styles.stageName}>{stage}</h4>
                    <ul>
                      {artistes
                        .filter((artist) =>
                          artist.toLowerCase().includes(filter.toLowerCase())
                        )
                        .map((artist) => (
                          <button
                            key={artist}
                            onClick={togglePopUp}
                            onKeyDown={togglePopUp}
                            type="button"
                          >
                            {artist}
                          </button>
                        ))}
                    </ul>
                  </div>
                ))}
        </div>
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

export default LineUp;
