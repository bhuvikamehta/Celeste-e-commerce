const wrapper = document.querySelector('.wrapper')
const registerLink = document.querySelector('.register-link')
const loginLink = document.querySelector('.login-link')

registerLink.onclick = () => {
    wrapper.classList.add('active')
}

loginLink.onclick = () => {
    wrapper.classList.remove('active')
}

function openPopup() {
    document.getElementById('forgotPopup').style.display = 'flex';
}

function closePopup() {
    document.getElementById('forgotPopup').style.display = 'none';
}

function sendResetLink() {
    const email = document.getElementById('resetEmail').value;
    if (email) {
        alert(`Reset link sent to ${email}`);
        closePopup();
    } else {
        alert("Please enter a valid email address.");
    }
}
