const slides = document.querySelectorAll('.slide');
const dots = document.querySelectorAll('.dot');

let index = 0;

function showSlide(i) {
    slides.forEach((slide, idx) => {
        slide.classList.remove('active');
        dots[idx].classList.remove('active');
    });
    slides[i].classList.add('active');
    dots[i].classList.add('active');
}

function nextSlide() {
    index = (index + 1) % slides.length;
    showSlide(index);
}

dots.forEach((dot, idx) => {
    dot.addEventListener('click', () => {
        index = idx;
        showSlide(index);
    });
});

// document.addEventListener("DOMContentLoaded", () => {
//     const exploreBtn = document.getElementById("exploreBtn");
//     if (exploreBtn) {
//         exploreBtn.addEventListener("click", function (e) {
//             e.preventDefault();
//             document.body.classList.add("fade-out");
//             setTimeout(() => {
//                 window.location.href = this.href;
//             }, 500);
//         });
//     }
// });


setInterval(nextSlide, 3000); // Change every 4 seconds
