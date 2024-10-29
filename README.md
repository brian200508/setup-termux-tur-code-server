# setup-termux-tur-code-server
Post install script for installing Termux User Repository (TUR), code-server (and/or AcodexX server) and some developer stuff.

## Steps
### Prerequisites
Install Termux at first.
- Install Termux App (see https://github.com/termux/termux-app/releases).

## Install Termux User Repository with code-server
Install TUR with code-server and Termux Widget shortcuts.

```bash
curl -Lf https://raw.githubusercontent.com/brian200508/setup-termux-tur-code-server/main/install-acodex-server.sh -o ~/install-acodex-server.sh && chmod +x ~/install-acodex-server.sh && ~/install-acodex-server.sh && rm -f ~/install-code-server.sh
```

## Install Termux User Repository with AcodeX server
Install TUR with code-server and Termux Widget shortcuts.

```bash
curl -Lf https://raw.githubusercontent.com/brian200508/setup-termux-tur-code-server/main/install-acodex-server.sh -o ~/install-acodex-server.sh && chmod +x install-acodex-server.sh && ~/install-acodex-server.sh && rm -f ~/install-acodex-server.sh
```

## Projects referred
 - AcodeX acode-plugin-acodex (https://github.com/bajrangCoder/acode-plugin-acodex)
 - code-server (https://github.com/coder/code-server)
 - Termux App (https://github.com/termux/termux-app)
 - Termux User Repository (https://github.com/termux-user-repository/tur)
 - Termux Widget (see https://github.com/termux/termux-widget)
 - VSCode/Code-OSS (https://github.com/microsoft/vscode)
