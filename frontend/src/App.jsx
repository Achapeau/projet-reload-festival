import React from "react";
import NavBar from "./components/NavBar";
import AppRoutes from "./routes/AppRoutes";
import Footer from "./components/Footer";
import "./styles/App.scss";

function App() {
  return (
    <div className="app-wrapper">
      <NavBar />
      <div className="page">
        <div className="boxLecteur">
          <iframe
            className="lecteur"
            title="player"
            style={{ borderRadius: "15px" }}
            src="https://open.spotify.com/embed/playlist/1TqwrS5c8vgpO4h4U5gPjQ?utm_source=generator"
            width="90%"
            height="150"
            frameBorder="0"
            allowfullscreen=""
            allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"
            loading="lazy"
          />
        </div>

        <div className="content">
          <AppRoutes />
        </div>
        <div className="footer">
          <Footer />
        </div>
      </div>
    </div>
  );
}

export default App;
