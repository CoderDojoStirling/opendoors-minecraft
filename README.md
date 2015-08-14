# Stirling OpenDoors 2015 - Minecraft demo
## What's this all about?
Creative Stirling / CoderDojo plan to run a demo at OpenDoors 2015. The idea is that people will be able to 'build an old Stirling street' - by coding it in Minecraft. By 'coding', people will be able to call a set of pre-existing Javascript functions, which create buildings, streets, signs, etc. Some variation in construction will be possible, e.g. the number of building storeys can be specified.

This project provides the materials required to setup a CoderDojo Linux laptop for the OpenDoors event.

## How do I set up a laptop?

After setup, the laptop will contain:
* Minecraft (needs account)
* Minecraft server (with relevant Javascript code)
* Atom text editor (for editing Javascript code)

The setup laptop can be used to:
* Run the demo
* Add to the existing Javascript code, to create more construction components - like different types of house

To setup the laptop, follow the instructions below.

First, log into the laptop as 'coderdojo-mentor'.

Next, open the File Explorer, and use the top menu to go to Edit > Preferences > Behaviour > Executable Text Files. Ensure that the following setting is selected: 'Run executable text files when they are opened'

Now open a terminal and run..
```
cd ~/Desktop
sh -c "$(wget https://raw.githubusercontent.com/CoderDojoStirling/opendoors-minecraft/master/minecraft-install.sh -O -)"
```

This downloads all relevant materials to the 'opendoors' folder on the desktop.

Open the 'opendoors' folder. We'll now setup a running Minecraft server + Minecraft client.
* Double-click run-minecraft-server.sh to start the server
* Double-click run-minecraft.sh to start the client

Let's get the Minecraft client connected to the server and running Javascript
* In the Minecraft client, open Multiplayer > Direct Connect, and enter 'localhost'. You should connect to the server.
* In the Minecraft server, type in at the bottom-right prompt: 'jsp classroom on'. This switches on Javascript for all clients.
* Back in the client, type '/' to open the prompt. Now type 'js 1 +1'. If the answer runs '2.0', you're running Javascript!

Let's see if we can build in Minecraft using Javascript:
* In the Minecraft client, type '/' to open the prompt. Now type 'js stirling.house(). A house should appear like magic.

At this point, the laptop is setup to run the demo. However, we'd like to create some more construction components for people to play with. You can do that by editing the project javascript. Any code changes you make should be reflected immediately in the Minecraft client. So if you redefine what a house looks like, and then run 'stirling.house()', you should see the changes.

To edit the project javascript:
* Open the 'opendoors' folder
* Double-click on edit-minecraft-code.sh

You should now be looking at the project javascript in the atom text-editor:
* We're using the ScriptCraft Drone object to assemble structures: https://github.com/walterhiggins/ScriptCraft/blob/master/docs/API-Reference.md#drone-plugin
* Saved changes should be available immediately in the Minecraft client. But watch out for code errors by reviewing the Minecraft server log.
