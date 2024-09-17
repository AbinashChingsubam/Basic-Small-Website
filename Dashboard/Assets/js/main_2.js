//Putting Bootstrap Form-check-input class to form checkbox
const radio = document.querySelectorAll(".form-check input[type=radio]");
const checkbox = document.querySelectorAll(".form-check input[type=checkbox]");

for (let i = 0; i < radio.length; i++) {
    radio[i].classList.add("form-check-input");
}

for (let i = 0; i < checkbox.length; i++) {
    checkbox[i].classList.add("form-check-input");
}

const hamburgerButton = document.querySelector(".hamburger-button");
const menus = document.querySelector(".menus");
const adminMain = document.querySelector(".admin-main");
const adminFooter = document.querySelector(".admin-footer");

$(document).ready(function () {
    $(hamburgerButton).on('click', function () {
        $(menus).toggleClass('left');
        $(adminMain).toggleClass('no-margin-left');
        $(adminFooter).toggleClass('no-margin-left');
        return false;
    });
});