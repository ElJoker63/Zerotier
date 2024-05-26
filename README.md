## ZeroTier Installation Scripts

### Overview

This repository contains two Bash scripts for installing ZeroTier One and its GUI on Ubuntu-based systems:

* **install-zerotier.sh:** Installs ZeroTier One, a virtual private network (VPN) mesh that enables peer-to-peer connectivity between devices.
* **install-zerotier-gui.sh:** Installs ZeroTier GUI, a graphical user interface for managing ZeroTier One connections.

### Features

- Automated installation: Simplify the installation process of ZeroTier One and its GUI.
- Dependency management: Handle essential dependencies ensuring a smooth installation.
- Verification checks: Confirm successful installation by verifying command availability.
- Optional service management: Provide options to enable and start the ZeroTier One service automatically.

### Installation Instructions

**Prerequisites:**

- Internet connection
- Ubuntu-based system

**Installing `install-zerotier.sh`**

```console
curl -sSL https://raw.githubusercontent.com/ElJoker63/Zerotier/main/install-zerotier.sh > install-zerotier.sh
```

```console
chmod +x install-zerotier.sh
```

```console
sudo ./install-zerotier.sh
```

**Installing `install-gui.sh`**

```console
curl -sSL https://raw.githubusercontent.com/ElJoker63/Zerotier/main/install-gui.sh > install-gui.sh
```

```console
chmod +x install-gui.sh
```

```console
sudo ./install-gui.sh
```
