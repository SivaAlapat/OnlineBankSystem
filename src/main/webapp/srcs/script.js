document.addEventListener("DOMContentLoaded", function () {
  const showSignup = document.getElementById("showSignup");
  const showLogin = document.getElementById("showLogin");
  const loginForm = document.getElementById("loginForm");
  const signupForm = document.getElementById("signupForm");

  if (showSignup) {
    showSignup.addEventListener("click", function (e) {
      e.preventDefault();
      loginForm.style.display = "none";
      signupForm.style.display = "block";
    });
  }

  if (showLogin) {
    showLogin.addEventListener("click", function (e) {
      e.preventDefault();
      signupForm.style.display = "none";
      loginForm.style.display = "block";
    });
  }
});

// Auto-scroll Carousel
$(".carousel").carousel({
  interval: 3000,
});

document
  .querySelector('#signupForm button[type="submit"]')
  .addEventListener("click", function (e) {
    e.preventDefault();
    alert("Sign Up successful!");
    $("#loginModal").modal("show");
  });
