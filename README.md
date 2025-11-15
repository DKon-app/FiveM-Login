# FiveM DKon Authentication Script

This script integrates user authentication into your GTA V FiveM server using the DKon API. Players can log in with their credentials, and the script handles the communication with the API for authentication.

## Features

- Player login via username and password.
- Integration with the DKon API for account verification.
- Client-side feedback on login success or failure.
- Simple and intuitive login process.

## Installation

1. **Download the Script**:
   Save the provided server and client code into the appropriate files:
   - `server/main.lua`
   - `client/main.js`

2. **Edit Your Server Configuration**:
   Ensure that your server configuration allows for the execution of this script.

3. **Install Dependencies**:
   Make sure to include any necessary libraries, such as `socket.http`, for handling HTTP requests. You may also need to use a JSON library for Lua (e.g., `dkjson`).

4. **Start Your Server**:
   Restart or start your FiveM server to apply the changes.

## Usage

- Players can type `/login` to initiate the login process.
- They will be prompted to enter their username and password.

## Registration Site

To use the authentication features, players must register for an account on [DKon.app](https://dkon.app). Be sure to acquire the necessary API credentials.

## Configuration

- The script uses a predefined `clientId`. Ensure that it matches the one provided by DKon API for your application.

## Important Notes

- **Testing**: Thoroughly test the authentication process in a safe environment before deploying it on a live server.
- **Version Compatibility**: Ensure that your FiveM server is updated to the latest version for seamless operation.


