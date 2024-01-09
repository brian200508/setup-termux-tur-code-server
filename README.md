# setup-termux-tur-code-server
Post install script for installing Termux User Repository (TUR), code-server (and/or AcodexX server) and some developer stuff.

## Steps
### Prerequisites
Install Termux at first.
- Install Termux App (see https://github.com/termux/termux-app/releases).
- Setup storage access and install Git:

#### Android 13 and earlier
```bash
termux-setup-storage && pkg update -y && pkg install -y git
```

#### Android 14
Since Android 14 the command ```termux-setup-storage``` does not work any longer due to new memory access restrictions.
- Go to Android Setup Menu, search for ```Apps```, scroll to ```Termux``` and grant full Storage access to Termux.
- Afterwards open Termux and continue with:
```bash
pkg update -y && pkg install -y git
```

### Clone this repository
```bash
git clone https://github.com/brian200508/setup-termux-tur-code-server /sdcard/Download/setup-termux-tur-code-server
```

## Install Termux User Repository with code-server
Install TUR with code-server and Termux Widget shortcuts.

```bash
cd ~ && cp /sdcard/Download/setup-termux-tur-code-server/install-code-server.sh . &&  chmod +x ~/install-code-server.sh && ./install-code-server.sh
```
## Install Termux User Repository with AcodeX server
Install TUR with code-server and Termux Widget shortcuts.

```bash
cd ~ && cp /sdcard/Download/setup-termux-tur-code-server/install-acodex-server.sh . &&  chmod +x ~/install-acodex-server.sh && ./install-acodex-server.sh
```



## Optionally remove this Git repository clone

```bash
rm -f ~/install-code-server.sh && rm -f ~/install-acodex-server.sh
```

```bash
rm -rf /sdcard/Download/setup-termux-tur-code-server
```

Done.

## Projects referred
 - AcodeX acode-plugin-acodex (https://github.com/bajrangCoder/acode-plugin-acodex)
 - code-server (https://github.com/coder/code-server)
 - Termux App (https://github.com/termux/termux-app)
 - Termux User Repository (https://github.com/termux-user-repository/tur)
 - Termux Widget (see https://github.com/termux/termux-widget)
 - VSCode/Code-OSS (https://github.com/microsoft/vscode)
