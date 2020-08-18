
# Create a script that, when run, will display the following environment variables to the console:

# USER
# HOME
# HISTCONTROL
# TERM



#!/bin/bash

clear
echo "This script will give us environment information"
echo "================================================"

echo ""
echo "Hello Username: $USER"
echo ""

echo "Your Home Directory is: $HOME"
echo ""
echo "Your History File Will Ignore: $HISTCONTROL"
echo ""

echo "Your Terminal Session Type is: $TERM"
echo ""

