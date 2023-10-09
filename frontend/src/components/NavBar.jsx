import React, { useState } from "react";
import { Link } from "react-router-dom";
import styles from "../styles/NavBar.module.scss";

function NavBar() {
  const [showLinks, setShowLinks] = useState(false);
  const handleShowLinks = () => setShowLinks(!showLinks);
  const handleCloseNavbar = () => setShowLinks(false);
  return (
    <div className={styles["block-nav"]}>
      <div className={styles["logo-mobile"]}>
        <Link to="/" onClick={handleCloseNavbar}>
          <img
            className={styles["img-logo-mobile"]}
            src="/Images/logo-no-background.png"
            alt="Logo for mobile"
          />
        </Link>
      </div>
      <nav
        className={`${styles.navbar} ${
          showLinks ? styles["show-nav"] : styles["hide-nav"]
        }`}
      >
        <ul className={styles["nav-links"]}>
          <li className={styles["nav-li logo-desk"]}>
            <Link
              className={styles["nav-link"]}
              to="/"
              onClick={handleShowLinks}
            >
              <img
                className={styles["img-logo-desk"]}
                src="/Images/logo-no-background.png"
                alt="Logo for desktop"
              />
            </Link>
          </li>
          <li className={styles["nav-li"]}>
            <Link
              className={styles["nav-link"]}
              to="/informations"
              onClick={handleShowLinks}
            >
              <h1>Informations</h1>
            </Link>
          </li>
          <li className={styles["nav-li"]}>
            <Link
              className={styles["nav-link"]}
              to="/lineup"
              onClick={handleShowLinks}
            >
              <h1>Line-Up</h1>
            </Link>
          </li>
          <li className={styles["nav-li"]}>
            <Link
              className={styles["nav-link"]}
              to="/schedule"
              onClick={handleShowLinks}
            >
              <h1>Horaire</h1>
            </Link>
          </li>
          <li className={styles["nav-li"]}>
            <Link
              className={styles["nav-link"]}
              to="/reservation"
              onClick={handleShowLinks}
            >
              <h1>Reservations</h1>
            </Link>
          </li>
          <li className={styles["nav-li"]}>
            <Link
              className={styles["nav-link"]}
              to="/map"
              onClick={handleShowLinks}
            >
              <h1>Carte</h1>
            </Link>
          </li>
          <li className={styles["nav-li"]}>
            <Link
              className={styles["nav-link"]}
              to="/favoris"
              onClick={handleShowLinks}
            >
              ⭐
            </Link>
          </li>
        </ul>
        <button
          className={styles["nav-burger"]}
          type="button"
          onClick={handleShowLinks}
        >
          <span className={styles.burgerBar} />
        </button>
      </nav>
    </div>
  );
}
export default NavBar;
