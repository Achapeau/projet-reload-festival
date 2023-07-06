import React, { useState, useEffect } from "react";
import { v4 as uuidv4 } from "uuid";
import styles from "../styles/Review.module.scss";

function Review() {
  const [reviews, setReviews] = useState([]);
  const [input, setInput] = useState("");
  const [stars, setStars] = useState(0);

  useEffect(() => {
    const storedReviews = localStorage.getItem("reviews");
    if (storedReviews) {
      setReviews(JSON.parse(storedReviews));
    }
  }, []);

  const handleSubmit = () => {
    const newReview = { text: input, stars, id: uuidv4() };
    const updatedReviews = [newReview, ...reviews];
    setReviews(updatedReviews);
    localStorage.setItem("reviews", JSON.stringify(updatedReviews));
    setInput("");
    setStars(0);
  };

  const handleStarClick = (num) => {
    setStars(num);
  };
  const getStarColorClass = (numStars) => {
    switch (numStars) {
      case 2:
        return "red";
      case 3:
        return "green";
      case 4:
        return "orange";
      case 5:
        return "yellow";
      default:
        return "";
    }
  };

  return (
    <div className={styles["review-container"]}>
      <h2 className={styles.titre}>Donne-nous ton avis</h2>
      <div>
        <textarea value={input} onChange={(e) => setInput(e.target.value)} />
        <div className={styles["review-stars"]}>
          {[...Array(5)].map((_, i) => (
            <button
              className={`${styles.star} ${i < stars ? styles.active : ""}`}
              type="submit"
              key={uuidv4()}
              onClick={() => handleStarClick(i + 1)}
            >
              {i < stars ? "★" : "☆"}
            </button>
          ))}
        </div>
        <button
          className={styles["review-submit"]}
          type="submit"
          onClick={handleSubmit}
        >
          Soumettre mon avis
        </button>
      </div>
      <div className={styles["review-comments"]}>
        {[...reviews]
          .reverse()
          .map((review) => (
            <div key={review.id}>
              <div className={styles.comment}>{review.text}</div>
              {[...Array(5)].map((_, j) => (
                <span
                  key={uuidv4()}
                  className={`${styles.star} ${
                    j < review.stars ? getStarColorClass(review.stars) : ""
                  }`}
                >
                  {j < review.stars ? "★" : "☆"}
                </span>
              ))}
            </div>
          ))
          .reverse()}
      </div>
    </div>
  );
}

export default Review;
