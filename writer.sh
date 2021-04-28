#!/bin/bash
echo "Hello, I'm your Writer buddy! This will take some time so get some caffeine into your veins."
curl api.steampowered.com/ISteamApps/GetAppList/v0002 | grep -oP '(?<="name":")[^"]*' > steamapps.txt


