# Install FireFox and VScode

This repository contains a shell script that installs Firefox and Visual Studio Code (VSCode) on a Linux system using APT package manager.

## Usage

1. Make the script executable

```bash
chmod +x ffoxvscode.sh
```

2. Run the script

```bash
./script.sh
```
## The script performs the following tasks:

- Updates the APT package repository to ensure the latest package information is available.
- Installs Firefox ESR (Extended Support Release) using the APT package manager.
- Installs the necessary dependencies (curl and gpg) for installing Visual Studio Code.
- Imports the Microsoft GPG key and adds the VSCode repository to the APT sources list.
- Updates the APT package repository again to include the VSCode repository.
- Installs Visual Studio Code using the APT package manager.
- Removes the temporary GPG key file.

Once the script completes execution, both Firefox and Visual Studio Code will be installed on your Linux system.