function toggleProfilePopup() {
  const popup = document.getElementById("profilePopup");
  popup.style.display = popup.style.display === "block" ? "none" : "block";
}

// Close popup if clicked outside
document.addEventListener("click", function (event) {
  const popup = document.getElementById("profilePopup");
  const profileIcon = document.querySelector(".profile-icon");

  const isClickInsidePopup = popup.contains(event.target);
  const isClickOnIcon = profileIcon.contains(event.target);

  if (!isClickInsidePopup && !isClickOnIcon) {
    popup.style.display = "none";
  }
});
