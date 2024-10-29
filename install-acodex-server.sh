#!/bin/bash
GITHUB_BRANCH=https://raw.githubusercontent.com/brian200508/setup-termux-tur-code-server/main/
SHORTCUTS_DIR=~/.shortcuts

# Termux User Repository 
termux-setup-storage
echo "Setting up Termux User Repository (TUR)..."
cd ~
pkg update -y
pkg install -y tur-repo

# shortcut
echo "Setting up Termux Widget AcodeX-Server shortcut..."
cd ~
mkdir $SHORTCUTS_DIR
curl -Lf $GITHUB_BRANCH/shortcuts/acodex-server.sh -o $SHORTCUTS_DIR/acodex-server.sh
chmod +x $SHORTCUTS_DIR/acodex-server.sh
mkdir $SHORTCUTS_DIR/icons
curl -Lf $GITHUB_BRANCH/shortcuts/icons/acodex-server.sh.png -o $SHORTCUTS_DIR/icons/acodex-server.sh.png

# install developer stuff
echo "Setting up generic developer stuff..."
pkg update && pkg upgrade -y
pkg install -y curl git build-essential nodejs-lts python wget

# install AcodeX-Server
echo "Setting up AcodeX-Server..."
#pkg update && pkg upgrade -y
#npm i -g acodex-server
curl -sL https://raw.githubusercontent.com/bajrangCoder/acode-plugin-acodex/main/installServer.sh | bash


# add to .bashrc
echo "Adding AcodeX-Server to .bashrc for autostart..."
echo '' >> ~/.bashrc
echo '#Start AcodeX-Server if not running' >> ~/.bashrc
echo 'cmdAcodeXServer="acodeX-server"' >> ~/.bashrc
echo 'if [ $( ps aux | grep -c "acodeX-server" ) -gt 1 ] ; then echo "AcodeX-Server is already running." ; else $cmdAcodeXServer & fi' >> ~/.bashrc
echo '' >> ~/.bashrc

echo "Done :)"
echo ""
echo "Start AcodeX-Server with:"
echo "    acodeX-server"
echo ""
echo "For automatically starting Termux with Acode app"
echo "at least for SAMSUNG devices You can do the following:"
echo "    1. create new Routine:"
echo "       - IF App started > select Acode app"
echo "       - THEN Apps > Open App or execute App-Action > select Termux"
echo "       - save Routine"
echo ""

source ~/.bashrc
