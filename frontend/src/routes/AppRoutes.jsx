import React from "react";
import { Routes, Route } from "react-router-dom";
import HomePage from "../pages/HomePage";
import Informations from "../pages/Informations";
import LineUp from "../pages/LineUp";
import Schedule from "../pages/Schedule";
import Reservation from "../pages/Reservation";
import MapFestival from "../pages/MapFestival";
import Favorites from "../pages/Favorites";
import FestivalNotFound from "../pages/FestivalNotFound";
import Review from "../pages/Review";

function AppRoutes() {
  return (
    <Routes>
      <Route exact path="/" element={<HomePage />} />
      <Route path="/informations/" element={<Informations />} />
      <Route path="/lineup/" element={<LineUp />} />
      <Route path="/schedule/" element={<Schedule />} />
      <Route path="/reservation" element={<Reservation />} />
      <Route path="/map/" element={<MapFestival />} />
      <Route path="/favoris/" element={<Favorites />} />
      <Route path="/review/" element={<Review />} />
      <Route path="*" element={<FestivalNotFound />} />
    </Routes>
  );
}

export default AppRoutes;
