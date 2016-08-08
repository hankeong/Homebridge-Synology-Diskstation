#[Homebridge in a Docker Container on the Synology Diskstation Guide](http://jensbouma.nl/hello-siri-turn-the-lights-on-the-siri-for-iot-bridge-running-on-a-synology-nas/)

![](http://jensbouma.nl/wp-content/uploads/2016/08/ios-badge-works-with-apple-homekit.png)

#Step 1

Install Docker from the Package Manager on your Diskstation.

# Step 2

* _Download in Docker the image "marcoraddatz-synology-homebridge".
* _Docker Homebridge

![](http://jensbouma.nl/wp-content/uploads/2016/08/Screen-Shot-2016-08-06-at-18.45.15.png)

# Step 3

* _Create a folder "homebridge" in your "Docker" share on the Diskstation (For easy filehandeling I like it to enable "Show in network" on the docker share so it shows up as a network share on my computer)
* _Add config.json and a install.sh files with the modules you want to the homebridge folder.

# Step 4

"Launch" this image and set the following advanced options:
* _Network: Use the same network as the Docker host
* _Volume: Add for easy access to the dockerized homebridge folder a local directory and point this to /root/.homebridge
* _Run container (you can see in the log what is is doing), first it shall install the modules form the install.sh then it will run homebridge with the settings form the config.json.

![](http://jensbouma.nl/wp-content/uploads/2016/08/Screen-Shot-2016-08-06-at-23.16.58.png)
![](http://jensbouma.nl/wp-content/uploads/2016/08/Screen-Shot-2016-08-06-at-23.16.40.png)

There should be a homebridge device called 'Homebridge is Working"
![](http://jensbouma.nl/wp-content/uploads/2016/08/IMG_6822.png)

# Step 5
* _ Rename install.sh > install.sh.installed if u don't want to wait every time the container runs.
* _ Add the [modules](https://www.npmjs.com/search?q=homebridge-plugin) you want to use by editing the install.sh, this wil runs every time when the container starts.
* _ Edit your config.json so it suits you and check this on (http://jsonlint.com).
* _ Restart the container to run the new config file and installscript

**IMPORTANT**: You must use a "plain text" editor to create or modify `config.json`. Do NOT use apps like TextEdit on Mac or Wordpad on Windows; these apps will corrupt the formatting of the file in hard-to-debug ways. I suggest using the free [Atom text editor](http://atom.io)

# Advanced
You can get into the shell of the docker container with the following steps:

* _ssh into your Diskstation (ssh root@yourip)
* _'sudo su' to get into superuser mode
* _'docker exec -u 0 -it HomeBridge bash' to go into your container shell

From here you can direct install modules with 'npm install -g homebridge-particle' for example or run homebridge with the command 'homebridge' for direct visual feedback in the terminal shell for debugging your edited config file.

If the connection doesn't work as it should, this is mostly fixed by deleting the persist folder (in the folder on the docker share) and remove your homebridge device from homekit with a reboot of the container and adding it again to homekit.

# Controlling with iOS

In the beta of iOS 10 there is a default app called 'home', a other good option is: [MyTouchHome](https://geo.itunes.apple.com/nl/app/mytouchhome/id965142360?mt=8&at=1001lE6).

#Sources

(https://github.com/nfarina/homebridge)

(https://www.npmjs.com/search?q=homebridge-plugin)

(https://registry.hub.docker.com/u/marcoraddatz/synology-homebridge/)
