import React, { useState } from "react";
import { Link } from "react-router-dom";
import styles from "../styles/Footer.module.scss";
import logoCinereact from "../assets/Images/partenaires/logo-cinereact.svg";
import logoMcu from "../assets/Images/partenaires/logo-mcu.svg";
import logoQuestubois from "../assets/Images/partenaires/Logo-Questubois.png";

function Footer() {
  const [showLogos, setShowLogos] = useState(false);

  const handlePartenairesClick = () => {
    setShowLogos(!showLogos);
  };

  return (
    <footer className={styles.footer}>
      <div className={styles.container}>
        <ul className={styles.links}>
          <li className={styles["list-link"]}>
            <Link to="/">Accueil</Link>
          </li>
          <li className={styles["list-link"]}>
            <Link to="/informations">À propos</Link>
          </li>
          <li className={styles["list-link"]}>
            <Link to="/review">Avis</Link>
          </li>
          <li className={styles["list-link"]}>
            <button
              type="button"
              className={styles.buttonPartenaire}
              onClick={handlePartenairesClick}
            >
              Partenaires
            </button>
          </li>
        </ul>
        {showLogos && (
          <div className={styles.partenaires}>
            <div className={styles["partenaires-section"]}>
              <a
                className={styles["link-partenaire"]}
                href="https://cinereact.cdnsamuel.fr/"
                target="_blank"
                rel="noopener noreferrer"
              >
                <img
                  src={logoCinereact}
                  alt="cinereact"
                  className={styles.partenairesCineReact}
                />
              </a>
              <a
                className={styles["link-partenaire"]}
                href="https://github.com/WildCodeSchool/2023-05-JS-RemoteFR-LaBoulangerieDuCode-P2-questubois"
                target="_blank"
                rel="noopener noreferrer"
              >
                <img
                  src={logoQuestubois}
                  alt="questubois"
                  className={styles.partenairesQuestubois}
                />
              </a>
              <a
                className={styles["link-partenaire"]}
                href="https://github.com/WildCodeSchool/2023-05-JS-RemoteFR-LaBoulangerieDuCode-P2-MCU-Timeline"
                target="_blank"
                rel="noopener noreferrer"
              >
                <img
                  src={logoMcu}
                  alt="Logo-version-finale"
                  className={styles.partenairesMCU}
                />
              </a>
            </div>
          </div>
        )}
      </div>
    </footer>
  );
}

export default Footer;
