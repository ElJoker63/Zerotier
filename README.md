##ZeroTier Installation Scripts (Markdown)
#Overview

This repository contains two Bash scripts for installing ZeroTier One and its GUI on Ubuntu-based systems:

    install-zerotier.sh: Installs ZeroTier One, a virtual private network (VPN) mesh that enables peer-to-peer connectivity between devices.
    install-zerotier-gui.sh: Installs ZeroTier GUI, a graphical user interface for managing ZeroTier One connections.

Installation Instructions

Prerequisites:

    Internet connection
    Ubuntu-based system

Installing install-zerotier.sh

    Download the script:

```curl -sSL https://raw.githubusercontent.com/ElJoker63/Zerotier/main/install-zerotier.sh > install-zerotier.sh```

Usa el código con precaución.

    Make the script executable:

Bash

chmod +x install-zerotier.sh

Usa el código con precaución.

    Run the script with root privileges:

Bash

sudo ./install-zerotier.sh

Usa el código con precaución.

Installing install-zerotier-gui.sh

    Download the script:

Bash

curl -sSL https://raw.githubusercontent.com/ElJoker63/Zerotier/main/install-zerotier-gui.sh > install-zerotier-gui.sh

Usa el código con precaución.

    Make the script executable:

Bash

chmod +x install-zerotier-gui.sh

Usa el código con precaución.

    Run the script with root privileges:

Bash

sudo ./install-zerotier-gui.sh

Usa el código con precaución.
Script Functionality

install-zerotier.sh

    Installs essential dependencies (libssl-dev, cargo, clang, and build-essential).
    Clones the ZeroTier One repository from GitHub.
    Executes the make command to build and install ZeroTier One.
    Verifies installation by checking for the zerotier-one command.
    Provides optional steps to enable and start the ZeroTier One service automatically.

install-zerotier-gui.sh

    Navigates to the Downloads directory.
    Clones the ZeroTier GUI repository from GitHub.
    Runs the ./make_deb.sh script to build the DEB package.
    Installs the generated DEB package using sudo apt install.
    Checks and installs Python3 and Python3-TK (or Tkinter via pip) if necessary.
    Verifies installation by confirming the presence of the zerotier-gui command.

Additional Notes

    Refer to the script output and respective GitHub repositories for troubleshooting assistance.
    The scripts are designed for Ubuntu-based systems; compatibility on other Linux distributions may vary.

Disclaimer

These scripts are provided as-is and without warranty of any kind. Please use them at your own risk.