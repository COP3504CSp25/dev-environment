# COP3504 Development Environment

While it's not strictly required, for this course, we recommend the use of an operation system that uses `bash` or `zsh` and contains the standard GNU utils. If you are already running macOS or Linux, you're all set to skip to **Installing packages**. If you are running a Windows version older than Windows 10, you will need to refer to VBox-guide.md to install Virtual Box to create a virtual machine for this course. For Windows 10 and above, you'll need to install WSL2. If both the WSL2 and VirtualBox processes don't work for you, skip to **Installing MSYS2**

## Prerequisites

- 25 GB of disk space
- 2 CPU Cores
- 2048 MB RAM
- Virtualization-enabled processor
- Internet connection

## Installing WSL2

- Open a powershell prompt by entering the keyboard combination `Win+R` and typing `powershell` into the newly opened run prompt.
- Check WSL distributions by entering the command `wsl --list --online`
- Install Ubuntu 24.04 by entering the command `wsl --install -d Ubuntu-22.04`.
- Once the install is finished, you should be greeted with a prompt that asks you for a username and password.
  - The VirtualBox machine has the username as `student` and the password as `cop3504` but you are free to use what you wish. Pick something memorable.
- Once finished, reboot your computer.

## Launching WSL2

- Launch WSL2 by typing `wsl` into `powershell` or typing `wsl` into the run prompt. Note your working directory. Do not work in a sensitive directory like the filesystem root `C:/` or anywhere in the `Windows/` directory.
  - Change directories using the `cd` command. `cd` with no arguments will put you in the home folder of the Ubuntu installation. You can work there for now, but for later projects, you might want to `cd` out and work elsewhere.
    
## Installing packages
- Update the package manager by running `sudo apt update && sudo apt upgrade -y` and typing in the password you set in the previous section.
- Once finished, install the packages we will use by running `sudo apt install build-essential python3 gdb curl wget git cmake vim emacs valgrind libsfml-dev -y`
- Once finished, you should be all set to complete the Hello World assignment on the development environment.

## Installing g++ on your local machine

- Note: if you're running macOS or Linux you do not need to do this.
- If you don't want to configure your IDE to use WSL, you can install the toolchain on your Windows machine directly.
- Uninstall your current `g++` and `gcc` compilers, if you have them
- Install MSYS2 from the link: https://msys2.github.io/
- Click on MSYS2 UCRT64 in your Start menu
- Run the following commands:
   - `pacman -S mingw-w64-x86_64-gsl`
   - `pacman -S mingw-w64-x86_64-cmake`
   - `pacman -S mingw-w64-x86_64-gcc`
   - `pacman -S mingw-w64-x86_64-sfml`
   - `pacman -S mingw-w64-x86_64-make`
- Add MSYS2 to your environment variables.
  - Open the start menu and search for "Edit the system environment variables".
  - In the window that opens, click "Environment Variables".
  - On the bottom under "System variables" click the entry named "Path" and then click "Edit".
  - In the window that opens, click "New".
  - Type in the path that `mingw64/bin/` directory is located into the box. I recommend moving the `msys64/` directory to your `C:/` directory, so the recommended path is `C:\msys64\mingw64\bin`
  - Click OK thrice to exit all three environment variable windows.
  - Restart your machine.
- Your should be all set to copmlete the Hello World assignment on your local machine.

## Troubleshooting
- If you run into problems, let the course staff know so that this section can be updated accordingly. If you can't get it working for whatever reason, you also have the VirtualBox and MSYS2 routes to take. VirtualBox is harder to set up and eats up a lot of hard disk space, but is nearly guaranteed to work. MSYS2 will probably work now without much trouble and is decently small, but could cause problems later on in the course. Choose accordingly.

## Building

Virtual Machine Requirements:
- 2048 MB Memory
- 2 CPU Cores
- 25 GB of Drive Space

Run the `Ubuntu Desktop 24.04 LTS` installer
At the "How would you like to install Ubuntu?" page, select **Automated installation**

Enter the following autoinstall yaml URL:
```
https://raw.githubusercontent.com/0ntu/cop3504-devenv/refs/heads/master/autoinstall.yaml
```
