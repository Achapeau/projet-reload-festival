import React, { useEffect, useState, useCallback } from "react";
import Proptypes from "prop-types";

import styles from "../styles/ResetMap.module.scss";

const zoom = 13;

function ResetMap({ map, center }) {
  const [position, setPosition] = useState(() => map.getCenter());

  const onClick = useCallback(() => {
    map.setView(center, zoom);
  }, [map]);

  const onMove = useCallback(() => {
    setPosition(map.getCenter());
  }, [map]);

  useEffect(() => {
    map.on("move", onMove);
    return () => {
      map.off("move", onMove);
    };
  }, [map, onMove]);

  return (
    <p>
      <span className={styles.position}>
        latitude: {position.lat.toFixed(4)}, longitude:{" "}
        {position.lng.toFixed(4)}
      </span>
      <button className={styles.reset} type="button" onClick={onClick}>
        reset
      </button>
    </p>
  );
}

ResetMap.propTypes = {
  map: Proptypes.string.isRequired,
  center: Proptypes.arrayOf.isRequired,
};

export default ResetMap;
