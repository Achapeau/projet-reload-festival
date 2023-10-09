import React from "react";

import styles from "../styles/FestivalNotFound.module.scss";

function FestivalNotFound() {
  return (
    <div className={styles.container}>
      <h1 className={styles.titre}>
        Désolé, nous n'avons pas trouvé votre festival...
      </h1>
      <img
        className={styles.img}
        src="/Images/festivaNotFound.jpg"
        alt="The desert"
      />
    </div>
  );
}
export default FestivalNotFound;
