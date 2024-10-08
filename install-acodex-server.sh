#!/bin/bash
REPO_DIR_DISTRO=/sdcard/Download
REPO_DIR_TERMUX=/sdcard/Download
REPO_NAME=setup-termux-tur-code-server
SHORTCUTS_DIR=.shortcuts

function yes_or_no {
    while true; do
        read -p "$* [y/n]: " yn
        case $yn in
            [Yy]*) return 0  ;;  
            [Nn]*) echo "Aborted" ; return  1 ;;
        esac
    done
}

# Termux User Repository 
termux-setup-storage
echo "Setting up Termux User Repository (TUR)..."
cd ~
pkg update -y
pkg install -y tur-repo

# shortcut
echo "Setting up Termux Widget Debian shortcut..."
cd ~
mkdir $SHORTCUTS_DIR
cp $REPO_DIR_TERMUX/$REPO_NAME/shortcuts/acodex-server.sh $SHORTCUTS_DIR
chmod +x $REPO_DIR_TERMUX/$REPO_NAME/acodex-server.sh
mkdir $SHORTCUTS_DIR/icons
cp $REPO_DIR_TERMUX/$REPO_NAME/shortcuts/icons/acodex-server.sh.png $SHORTCUTS_DIR/icons

# install deverloper stuff
echo "Setting up generic developer stuff..."
pkg update && pkg upgrade -y
pkg install -y curl git build-essential nodejs-lts python wget

# install AcodeX server
echo "Setting up AcodeX server..."
#pkg update && pkg upgrade -y
#npm i -g acodex-server
curl -sL https://raw.githubusercontent.com/bajrangCoder/acode-plugin-acodex/main/installServer.sh | bash


# add to .bashrc
echo "Adding AcodeX server to .bashrc for autostart..."
echo '' >> ~/.bashrc
echo '#Start AcodeX server if not running' >> ~/.bashrc
echo 'if [ $( ps aux | grep -c "acodeX-server" ) -gt 1 ] ; then echo "AcodeX server is already running." ; else acodeX-server ; fi' >> ~/.bashrc
echo '' >> ~/.bashrc

echo "Done :)"
yes_or_no "Delete the cloned Git repo ($REPO_DIR_TERMUX/$REPO_NAME)?" && rm -rf $REPO_DIR_TERMUX/$REPO_NAME
echo ""
echo "Start AcodeX server with:"
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
