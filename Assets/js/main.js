const hamburgerButton = document.querySelector(".hamburger-button");
const menus = document.querySelector(".menus");
const scrollToTopButton = document.querySelector(".scroll-to-top-button");
const preloader = document.querySelector(".preloader");
const header = document.querySelector(".header");
const mainContent = document.querySelector(".main");
const footer = document.querySelector(".footer");

// Preloader script
window.addEventListener("load", function () {

    // Hide the preloader
    preloader.classList.add("d-none")

    // Show the main content
    header.style.display = "block";
    mainContent.style.display = "block";
    footer.style.display = "block";
});

$(document).ready(function () {
    $(window).click(function () {
        if ($(menus).hasClass("slide-right")) {
            $(menus).removeClass('slide-right');
        }
    });
    $(hamburgerButton).on('click', function () {
        $(menus).toggleClass('slide-right');
        return false;
    });
}); 

// Scroll to Top Function
// When the user scrolls down 20px from the top of the document, flex the button
window.onscroll = () => {
    scrollFunction();
};

const scrollFunction = () => {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        scrollToTopButton.classList.add("flex");
    } else {
        scrollToTopButton.classList.remove("flex");
    }
}

// When the user clicks on the button, scroll to the top of the document
const scrollToTop = () => {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE, and Opera
}

scrollToTopButton.addEventListener("click", () => {
    scrollToTop();
});