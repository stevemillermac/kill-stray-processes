# kill-stray-processes
Kills any User process that should not be running.

This helps kiosk and shared use Mac OS 10.9+ computers. A bug exists that leaves logged out users running multiple processes. Mainly 4 processes stay, but more have been found running. (launchd, cfprefsd, distnoted, mdworker).

I use this script in conjunction with a login hook and Launch Daemon.

The login hook runs the script immediately at login, making sure all previous user processes are gone.
The Launch Daemon runs every 10 minutes. Running as root so it will execute the kill -9 we need for other users processes.
