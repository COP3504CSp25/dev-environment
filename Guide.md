# COP3504C Development Environment Guide
> "it works on my machine"
## Overview
A development environment provides a preconfigured toolset used to compile, run, and debug a project. This course has you create a number of projects that depend on other libraries (code written by other people). To avoid manual installation and guarantee all required libraries are installed, we provide our own development environment in the form of a **Virtual Machine** that contains all the tools you need to complete the assignments in this course.

Developing on the provided development environment is *optional*, but it's highly recommended that you <u>at least test your code with it prior to submitting on Gradescope</u>. The environment we use to test and grade your submission will be the exact same, so if your code works correctly on the VM, it should work on our end too.

*If you choose to develop on your own machine (without the environment), ensure you have the following installed: `g++`, `python3`, `SFML`. Be aware that course staff cannot guarantee support for dependency errors if you choose to go down this route.*

## Installation

1. Install [Oracle VirtualBox](https://www.virtualbox.org/wiki/Downloads)
![Untitled](https://github.com/user-attachments/assets/fde5cb3c-7321-4bbc-ab33-5ef9b8057a7d)


2. Download the [Development Environment](https://www.example.com)
3. In the tab bar, under "File", click "**Import Appliance**"
![Pasted image 20241226020505](https://github.com/user-attachments/assets/5274443e-bea8-42de-9fa7-20b11123963a)


4. Select the Development Environment OVA file
![Pasted image 20241226020601](https://github.com/user-attachments/assets/92959cf2-861c-4b11-87de-822736c4cc80)

5. Start the Virtual Machine
![Pasted image 20241226020734](https://github.com/user-attachments/assets/28b879a5-ebd0-474c-8aad-da23985cbd1d)

6. Login to the 'student' account with the password: "cop3504"
![Pasted image 20241226021102](https://github.com/user-attachments/assets/122aac93-a64a-4b76-8ec5-38e212954e74)

7. Open a terminal (on the left tab bar) and execute the command `ip addr`
![Pasted image 20241226021435](https://github.com/user-attachments/assets/f572e5ed-0893-4b73-8462-49a3f8b75e7e)


The highlighted portion is your IP address and is unique to your virtual machine. Keep track of your IP address for the next steps.

### VSCode

1. Install the Remote SSH Extension
![Pasted image 20241226022308](https://github.com/user-attachments/assets/d4f181f5-3855-4b95-bd98-3df1622bbf6f)


2. Open the Command-Palette `<F1>` and select "Remote-SSH: Connect to Host"
![Pasted image 20241226022543](https://github.com/user-attachments/assets/ba36c2e2-0e61-4c23-b9dd-6123044a806b)


3. Type `student@<IP-ADDRESS>` for your SSH Host, where `IP-ADDRESS` is the IP-Address from Installation: step 7.
![Pasted image 20241226022822](https://github.com/user-attachments/assets/2c7e615a-ec06-4006-9a80-dfd15631c7da)


4. Select the following answers to the prompts
   Platform of the remote host: `Linux`
   Are you sure you want to continue: `Yes`
   Password for SSH Host: `cop3504`
![Pasted image 20241226023015](https://github.com/user-attachments/assets/37bc862d-f43d-4a14-b215-da8b0d9e071a)


5. You are now connected to the development environment! You may now create a folder and begin working.
   Hint: You may also want a terminal for more control over the environment, Open a terminal with `` Ctrl+Shift+` ``

### Jetbrains: Pycharm & CLion
**UNDER CONSTRUCTION**

### Other IDEs
Any other IDEs that support remote development via SSH should work. However, you will have to read their specific documentation for setup. Feel free to use any tooling that suits you!

Credentials for the development environment:
- Username: `student`
- Password: `cop3504`

## Usage

Command-line projects can be tested and ran directly from your IDE or from within the virtual machine.

Graphical projects **must** be run from within the virtual machine. 

#### Testing Code inside the Virtual Machine
**UNDER CONSTRUCTION**
