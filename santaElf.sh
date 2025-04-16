#!/bin/sh
#
# This script adds programes to the block list used by Santa for MacOS. Santa must be installed for the script to work.
#
# Version 0.0.2
# Alpha Test
#
# Use santactl to call Santa Control. Use Rule to call for a rule and two flags to set what you want to do. --block to block 
# and --allow to allow. Use --sha256 to block the signing ID of the program/Dev. Use  --signingid to target just one specific app as SHA can block a whole range.
#
# Block Drop Box
/Applications/Santa.app/Contents/MacOS/santactl rule --block --sha256 bd0ed4aa414239048b31e3f97a0e103f05232ab4955b57c40b514990885fc33f
/Applications/Santa.app/Contents/MacOS/santactl rule --block --sha256 2cc2cf0b8794f80b913bb6189d4b3290c33fc296e23dc5e40b32f8be72b58060
# This will block all Google drive apps. Docs and Sheet are run through Google Drive and can not be allowed if Drive is blocked.
/Applications/Santa.app/Contents/MacOS/santactl rule --block --signingid --identifier EQHXZ8M8AV:com.google.drivefs
/Applications/Santa.app/Contents/MacOS/santactl rule --block --sha256 ef9e79f2e4c463522b691b87b0b901cbac327376027bb0eaf242de09c99a6a0b
# Block Box application
/Applications/Santa.app/Contents/MacOS/santactl rule --block --sha256 461319b8e5fea4299c85ecf21935832f13784d9d7214503104312ab98cba34f6
/Applications/Santa.app/Contents/MacOS/santactl rule --block --sha256 f68cc953034a6a52f5772db54cc1b7f32e923b7e3aaebee9d79203d6f357e9f8
/Applications/Santa.app/Contents/MacOS/santactl rule --block --signingid --identifier M683GB7CPW:com.box.desktop
# Block MEGA
/Applications/Santa.app/Contents/MacOS/santactl rule --block --sha256 0d1ac7cf53afc042757f80b7344347296bf64319ebf204747f9c57b348f7bc62
/Applications/Santa.app/Contents/MacOS/santactl rule --block --signingid --identifier T9RH74Y7L9:mega.mac
# Block Zoho
/Applications/Santa.app/Contents/MacOS/santactl rule --block --sha256 3228ad72ab8bf5628b8616009188cf4789c3e76dd97bff59e4bbffac0aa33fd6
/Applications/Santa.app/Contents/MacOS/santactl rule --block --sha256 4a418908ad111799e6a7d8370cdb0d8d7abbd95a8615c038df1fc0192be6cd72
/Applications/Santa.app/Contents/MacOS/santactl rule --block --signingid --identifier TZ824L8Y37:org.zoho.ZohoWorkDriveTrueSync
#
exit
