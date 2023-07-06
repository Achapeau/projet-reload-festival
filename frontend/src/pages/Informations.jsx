import React from "react";

import styles from "../styles/Informations.module.scss";

function Informations() {
  return (
    <div>
      <div className={styles.sheet}>
        <h2 className={styles.titre}>Règles du festival</h2>
        <ul>
          <li>
            Âge minimum : Le festival est réservé aux personnes âgées de 18 ans
            et plus...
          </li>
          <li>
            Bracelets d'accès : Tous les participants doivent porter le bracelet
            d'accès...
          </li>
          <li>
            Interdiction de drogues et d'alcool : Le Reload Festival se veut un
            événement familial...
          </li>
          <li>
            Respect de l'environnement : Nous encourageons les festivaliers à
            respecter les alentours et suivre les bons gestes durant le weekend
            ...
          </li>
          <li>Sécurité : La sécurité des festivaliers est notre priorité...</li>
        </ul>
      </div>
      <div className={styles.sheet}>
        <h2 className={styles.titre}>Règle du badge d'accès aux boissons</h2>
        <ul>
          <li>
            Badge d'accès : Un badge spécial sera délivré à chaque participant
            du Reload Festival pour permettre l'accès aux boissons alcoolisées
            disponibles sur le site.
          </li>
          <li>
            Âge minimum : Pour obtenir le badge d'accès aux boissons, les
            participants doivent présenter une pièce d'identité valide prouvant
            qu'ils ont l'âge légal pour consommer de l'alcool dans leur pays de
            résidence (par exemple, 18 ans en France)...
          </li>
          <li>
            Activation du badge : Avant de pouvoir utiliser le badge pour
            obtenir des boissons alcoolisées, les participants doivent se rendre
            à un stand dédié où leur badge sera activé...
          </li>
          <li>
            Limite de consommation : Chaque badge sera programmé avec une limite
            de consommation raisonnable par période de temps spécifiée (par
            exemple, 2 boissons par heure)...
          </li>
          <li>
            Contrôle à l'achat : Lorsque les participants souhaitent obtenir une
            boisson alcoolisée, leur badge sera scanné par le personnel du stand
            de boissons pour vérifier qu'ils n'ont pas atteint leur limite de
            consommation...
          </li>
          <li>
            Responsabilité individuelle : Chaque participant est responsable de
            son badge et de son utilisation...
          </li>
          <li>
            Service responsable : Le personnel des stands de boissons sera formé
            pour identifier les signes d'intoxication ou de comportement
            irresponsable...
          </li>
        </ul>
      </div>
      <div className={styles.sheet}>
        <h2 className={styles.titre}>Histoire du Reload Festival</h2>
        <ul>
          <li>
            Laissez-moi vous plonger dans l'histoire captivante du Reload
            Festival, un festival électro qui a su attirer l'attention du monde
            entier.
          </li>
          <li>
            Imaginez-vous à La-Rochelle, une petite ville du sud de la France où
            tout a commencé. C'est là qu'un groupe de passionnés de musique
            électro, animé par une vision commune, a décidé de créer un festival
            unique qui célèbrerait cet art dynamique et entraînant.
          </li>
          <li>
            La première édition du Reload Festival a été un véritable triomphe,
            rassemblant des mélomanes venus des quatre coins du globe.
          </li>
          <li>
            Ce qui rendait le Reload Festival si exceptionnel, c'était son
            ambiance électrique chargée d'énergie positive et sa programmation
            soigneusement conçue pour offrir une expérience inoubliable.
          </li>
          <li>
            La musique, bien sûr, était au cœur de cet événement, mais ce
            n'était pas seulement cela qui a attiré l'attention du monde entier.
            Le Reload Festival a su créer une atmosphère magique, propice aux
            rencontres et à la découverte de nouvelles sonorités.
          </li>
          <li>
            Au fil du temps, le Reload Festival a gagné en renommée et est
            devenu un rendez-vous incontournable pour les passionnés de musique
            électronique, marquant les esprits par son envergure et son esprit
            festif unique.
          </li>
          <li>
            Aujourd'hui, grâce à une programmation incroyablement diversifiée,
            une ambiance électrisante et un esprit festif contagieux, le Reload
            Festival est devenu un phénomène mondial, faisant vibrer les cœurs
            et les âmes des festivaliers à chaque édition.
          </li>
        </ul>
      </div>
      <div className={styles.sheet}>
        <h2 className={styles.titre}>Qui sommes-nous ?</h2>
        <p>
          Nous sommes avant tout une équipe, composée de quatre développeurs :{" "}
          <a href="https://github.com/DamienWCS">Damien</a>,{" "}
          <a href="https://github.com/Achapeau">Adrien</a>,{" "}
          <a href="https://github.com/annieccar">Annie</a> et{" "}
          <a href="https://github.com/Marvindje">Marvin</a>.
        </p>
        <p>
          Notre but était de travailler en étroite collaboration avec les
          équipes du festival pour rendre une application fonctionnelle ,
          facilement lisible et compréhensible de tous pour permettre l'accès au
          plus grand nombre. Les fonctionnalités ont été imaginées pour donner
          aux utilisateurs l'expérience d'un festival avant même d'y être . En
          effet nous avons prévu chaque questionnement des futurs festivaliers
          en anticipant leur potentielles requêtes (un preview de la
          discographie de vos artistes préferés est disponible en un click , la
          map du festival vous permettra de vous organiser à l'avance pour votre
          emplacement , les horaires sont disponibles avec le nom de la scène
          associé etc...) Enfin nous espérons que notre travail aura su vous
          accompagner tout au long de la periode précédent votre jour j et vous
          souhaitons un merveilleux Reload-Fest!
        </p>
      </div>
    </div>
  );
}

export default Informations;
