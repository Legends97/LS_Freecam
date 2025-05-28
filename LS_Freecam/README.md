## Overview
This script enables a free camera mode in FiveM that allows players to take screenshots or record videos. 
The camera can move freely within a configurable range and zoom in and out. 
It also includes controls for rolling (tilting) the camera.

## Features
* Free Camera Movement: Move the camera in any direction within a configurable range.
* Camera Zoom: Use the scroll wheel or Page Up/Down keys to zoom in and out.
* Camera Roll: Tilt the camera using the arrow keys.
* Customizable: Easily configure the camera's range, movement speed, and more.

## Installation
1. Download the Script
   Download it as a ZIP file and extract it.
``https://github.com/Legends97/LS_Freecam``

2. Add to Your FiveM Server
Place the extracted folder in your FiveM server's resources directory.

3. Add to server.cfg
Open your server.cfg file and add the following line to ensure the script is loaded when the server starts:
``start LS_Freecam``

4. Configure the Script
Open the config.lua file in the ls_freecam folder to customize the camera settings, including the range, movement speed, and keybindings.

5. Starting the Script
The script will start automatically when the server is launched. Players can activate the free camera mode in-game using the command configured in config.lua (default is /freecam).

## Controls
* W/S: Move Forward/Backward
* A/D: Move Left/Right
* Q/E: Move Up/Down
* Page Up/Down: Zoom In/Out
* Arrow Keys: Roll (Tilt) Camera Left/Right
* F1: Toggle on-screen control helpers
* F2: /freecam: Activate/Deactivate the free camera mode 
* /togglemarker Turn optical limit balls on and off

## Dependencies
This script is designed to be compatible with ESX but it should work in any FiveM server setup.

## Contributing
Do you have an idea or have you noticed a bug? Please let us know – via message or ticket. We look forward to your feedback!

Discord: https://discord.gg/kSpp6HUyS7

