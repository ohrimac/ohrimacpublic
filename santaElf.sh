#!/bin/sh
#
# This script adds programes to the block list used by Santa for MacOS. Santa must be installed for the script to work.
#
# Version 0.0.1
# Alpha Test
#
# Use sanatactl to call Sanata Control. Use Rule to call for a rule and two flags to set what you want to do. --block to block 
# and --allow to allow. Use --sha256 to block the signing ID of the program/Dev.
sleep 20
launchctl asuser $uid santactl rule --block --sha256 bd0ed4aa414239048b31e3f97a0e103f05232ab4955b57c40b514990885fc33f
launchctl asuser $uid santactl rule --block --sha256 2cc2cf0b8794f80b913bb6189d4b3290c33fc296e23dc5e40b32f8be72b58060
exit
