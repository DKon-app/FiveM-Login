// client/main.js

const { ipcRenderer } = require('electron');

RegisterNetEvent("myApp:requestLogin");
on("myApp:requestLogin", function() {
    let username = prompt("Enter your username:");
    let password = prompt("Enter your password:");

    if (username && password) {
        emit("myApp:processLogin", username, password);
    } else {
        console.log("Login cancelled.");
    }
});

RegisterNetEvent("myApp:loginSuccess");
on("myApp:loginSuccess", function(token, accountId) {
    console.log("Login successful!");
    console.log("Access Token:", token);
    console.log("Account ID:", accountId);
    // Redirect to the main game or perform further actions
});

RegisterNetEvent("myApp:loginFailed");
on("myApp:loginFailed", function() {
    console.log("Login failed. Please check your credentials.");
});
