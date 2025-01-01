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

**Initial setup**
1. Create a new project on your local system, or open an existing one that you'd like to upload to the VM.
![Creating a CLion Project](https://github.com/user-attachments/assets/57a7abf2-74c6-4f92-bb23-fd9fd9036560)

2. Open settings with `Ctrl+Alt+S` and navigate to File -> Build, Execution, Deployment -> Toolchains.
![image](https://github.com/user-attachments/assets/80516f99-802c-4500-8d6c-363485829fa5)

3. Click the plus in the top-left corner and click "Remote Host"
![image](https://github.com/user-attachments/assets/2e8b77d9-6f49-4115-b871-471adff2c699)

4. Click the gear next to credentials and enter

    - the developement environment's IP address in the host box
    - "22" in the port box
    - "student" in the Username box
    - Authentication type: Password
    - cop3504 in the password box. Check the "save password" option to avoid needing to type this in repeatedly when working

5. Test your connection.
![image](https://github.com/user-attachments/assets/f0a5eb02-8ec5-4df4-82f4-52f68ddf85de)

**For future projects, only the following steps need to be done each project.**

6. Navigate to Settings -> Build, Execution, Deployment -> Deployment, click the plus, and add a new SFTP configuration. Give it the same name as your current project.
![image](https://github.com/user-attachments/assets/3dc5ce8a-46f7-4619-83c7-7640073186a7)

7. Check the "Visible only for this project" box and click the dropdown for SSH configuration. Select the configuration that was made in step 4, which should be called "student@<IP_ADDRESS>".
![image](https://github.com/user-attachments/assets/2a0bfc2a-bf14-4128-846e-6ae8364382e8)

8. Click the "Mappings" tab on the top of the window. In the deployment path box, click the folder. Navigate to the folder on the virtual machine where your files are housed.
  - If you don't have a project folder on the virtual machine yet, open a terminal on it and create a directory in which you'd like your files to be housed with the `mkdir` command. You may also use the GUI to create a directory by clicking on the folder icon on the left side of the screen, navigating to the appropriate folder, right-clicking, and creating a new folder.
  - ![image](https://github.com/user-attachments/assets/4c12f8db-1744-4132-bfc1-1280fda752ad)

9. **CLion Only.** Navigate to Build, Execution, Deployment -> CMake in settings and create a new profile. Change the Toolchain to be Remote Host. Leave everything else default.
![image](https://github.com/user-attachments/assets/d0a3b1d9-956b-45f9-9eda-f460e55c8614)

10. Build and run the project with `Shift+F10` or via the run button.
![image](https://github.com/user-attachments/assets/cddbf4de-8c52-476d-a1e0-334f92922606)


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
