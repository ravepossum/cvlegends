# Instructions
_(based on pret's [pokered](https://github.com/pret/pokered) INSTALL.MD)_

These instructions explain how to set up the tools required to build cvlegends, including [rgbds](https://github.com/gbdev/rgbds), which assembles the source files into a ROM.


## Windows with WSL

Download and install [**Windows Subsystem for Linux**](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Then open the **WSL terminal**.

Update WSL's software before continuing. If you chose Debian, Ubuntu, or another distribution that uses `apt-get`, then enter this command:

```bash
apt-get update && apt-get upgrade
```

Proceed to either [Storing files with WSL1](#storing-files-with-wsl1) or [Storing files with WSL2](#storing-files-with-wsl2) depending on whether you plan to use WSL1 or WSL2.

### Storing files with WSL1

WSL has its own file system, but Windows files *are* accessible from WSL. If you're using WSL1, you can install cvlegends within Windows. You'll have to change the **current working directory** every time you open WSL.

For example, if you want to store cvlegends in a folder you've created called **C:\Users\\*\<user>*\decomps**, enter this command:

```bash
cd /mnt/c/Users/<user>/decomps
```

(The Windows `C:\` drive is called `/mnt/c/` in WSL. Replace *\<user>* in the example path with your username.)

Next, follow [the instructions for **Linux**](#linux) below for whatever distribution you installed for WSL.

### Storing files with WSL2

If you're using WSL2, you'll want to store files on the WSL drive for best performance.

For example, if you want to store cvlegends in a folder you've in your home directory called **decomps**, enter this command:

```bash
cd ~/decomps 
```

Next, follow [the instructions for **Linux**](#linux) below for whatever distribution you installed for WSL.


## macOS

Install [**Homebrew**](https://brew.sh/). Follow the official instructions.

Open **Terminal** and prepare to enter commands.

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#pre-built) for macOS to install **rgbds 0.9.0**.

Now you're ready to [build **cvlegends**](#build-cvlegends).


## Linux

Open **Terminal** and enter the following commands, depending on which distro you're using.

### Debian or Ubuntu

To install the software required for **cvlegends**:

```bash
sudo apt-get install make git
```

Then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#building-from-source) to build **rgbds 0.9.0** from source.

### Arch Linux

To install the software required for **cvlegends**:

```bash
sudo pacman -S make git rgbds
```

If you want to compile and install **rgbds** yourself instead, then follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#building-from-source) to build **rgbds 0.9.0** from source.

### Other distros

If your distro is not listed here, try to find the required software in its repositories:

- `make`
- `git`
- `rgbds`

If `rgbds` is not available, you'll need to follow the [**rgbds** instructions](https://rgbds.gbdev.io/install#building-from-source) to build **rgbds 0.9.0** from source.

Now you're ready to [build **cvlegends**](#build-cvlegends).


## Build cvlegends

To download the **cvlegends** source files:

```bash
git clone https://github.com/ravepossum/cvlegends
cd cvlegends
```

To build **cvlegends.gb**:

```bash
make
```

Currently, **cvlegends** only supports RGBDS 0.9.0.

### Matching

To ensure the compiled ROM matches the original release:

```bash
make compare
```