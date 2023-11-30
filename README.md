# setup-termux-tur-code-server
Post install script for installing Termux User Repository (TUR), code-server and some developer stuff.

## Steps
### Prerequisites
Install Termux at first.
- Install Termux App (see https://github.com/termux/termux-app/releases).
- Clone this repo:

```bash
termux-setup-storage && pkg update -y && pkg install -y git
```

```bash
git clone https://github.com/brian200508/setup-termux-tur-code-server ~/storage/shared/Download/setup-termux-tur-code-server
```

## Install Termux User Repository with code-server
Install TUR with code-server and Termux Widget shortcuts.

```bash
cd ~ && cp ~/storage/shared/Download/setup-termux-tur-code-server/install-code-server.sh . &&  chmod +x ~/install-code-server.sh && ./install-code-server.sh
```

## Optionally remove this Git repository clone

```bash
rm ~/install-code-server.sh
```

```bash
rm -rf /sdcard/Download/setup-termux-tur-code-server
```

Done.

## Projects referred
 - code-server (https://github.com/coder/code-server)
 - Termux App (https://github.com/termux/termux-app)
 - Termux User Repository (https://github.com/termux-user-repository/tur)
 - Termux Widget (see https://github.com/termux/termux-widget)
 - VSCode/Code-OSS (https://github.com/microsoft/vscode)
