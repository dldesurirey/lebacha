import "./section.css";

const initGaleries = () => {
  const galeries = document.querySelectorAll(".galery");

  galeries.forEach(galery => {
    galery.addEventListener("click", () => {
      const { carousel } = galery.dataset;
      document.getElementById(carousel).classList.remove("hidden");
    });
  });
};

const initCarousels = () => {
  const carousels = document.querySelectorAll(".carousel-container");

  carousels.forEach(carousel => {
    carousel.addEventListener("click", e => {
      e.target.classList.add("hidden");
    });
  });
};

document.addEventListener("DOMContentLoaded", () => {
  initGaleries();
  initCarousels();
});
