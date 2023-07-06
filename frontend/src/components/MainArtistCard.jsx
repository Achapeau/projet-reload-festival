import Proptypes from "prop-types";

import styles from "../styles/MainArtistCard.module.scss";

function MainArtistCard({ name, src, id }) {
  return (
    <div key={id} className={styles.mainArtistCard}>
      {name && <h1 className={styles.artistName}>{name}</h1>}
      {src && <img className={styles.mainArtistPhoto} src={src} alt={name} />}
    </div>
  );
}

MainArtistCard.propTypes = {
  name: Proptypes.string.isRequired,
  src: Proptypes.string.isRequired,
  id: Proptypes.string.isRequired,
};

export default MainArtistCard;
