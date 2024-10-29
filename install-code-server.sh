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
echo "Setting up Termux Widget code-server shortcut..."
cd ~
mkdir $SHORTCUTS_DIR
curl -Lf $GITHUB_BRANCH/shortcuts/code-server.sh -o $SHORTCUTS_DIR/code-server.sh
chmod +x $SHORTCUTS_DIR/code-server.sh
mkdir $SHORTCUTS_DIR/icons
curl -Lf $GITHUB_BRANCH/shortcuts/icons/code-server.sh.png -o $SHORTCUTS_DIR/icons/code-server.sh.png

# install developer stuff
echo "Setting up generic developer stuff..."
pkg update && pkg upgrade -y
pkg install -y curl git build-essential nodejs-lts python wget

# install code-server
echo "Setting up code-server..."
#pkg update -y
pkg install -y code-server

# add to .bashrc
echo "Adding code-server to .bashrc for autostart..."
echo '' >> ~/.bashrc
echo '#Start code-server if not running' >> ~/.bashrc
echo 'if [ $( ps aux | grep -c "[c]ode-server --auth none --port 13880" ) -gt 1 ] ; then echo "code-server is already running." ; else code-server --auth none --port 13880 ; fi' >> ~/.bashrc
echo '' >> ~/.bashrc

echo "Done :)"
echo ""
yes_or_no "Delete the cloned Git repo ($REPO_DIR_TERMUX/$REPO_NAME)?" && rm -rf $REPO_DIR_TERMUX/$REPO_NAME
echo ""
echo "Start code-server with:"
echo "    code-server --auth none --port 13880"
echo ""
echo "For automatically starting Termux with code-server progressive web app"
echo "at least for SAMSUNG devices You can do the following:"
echo "    1. goto localhost:13880 and install as progressive web app"
echo "    2. create new Routine:"
echo "       - IF App started > select code-server progressive web app"
echo "       - THEN Apps > Open App or execute App-Action > select Termux"
echo "       - save Routine"
echo ""

source ~/.bashrc
