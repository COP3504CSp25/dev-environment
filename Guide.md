# COP3504C Development Environment Guide
> "it works on my machine"
## Overview
A development environment provides a preconfigured toolset used to compile, run, and debug a project. This course has you create a number of projects that depend on other libraries (code written by other people). To avoid manual installation and guarantee all required libraries are installed, we provide our own development environment in the form of a **Virtual Machine** that contains all the tools you need to complete the assignments in this course.

Developing on the provided development environment is *optional*, but it's highly recommended that you <u>at least test your code with it prior to submitting on Gradescope</u>. The environment we use to test and grade your submission will be the exact same, so if your code works correctly on the VM, it should work on our end too.

*If you choose to develop on your own machine (without the environment), ensure you have the following installed: `g++`, `python3`, `SFML`. Be aware that course staff cannot guarantee support for dependency errors if you choose to go down this route.*

## Installation

1. Install [Oracle VirtualBox](https://www.virtualbox.org/wiki/Downloads)

![402428117-153abe56-d478-416d-9626-eb69437a506a](https://github.com/user-attachments/assets/dfcb8118-1313-40ea-9f5b-32377d618ee0)

2. Download the [Development Environment](https://uflorida-my.sharepoint.com/:u:/g/personal/npadriga_ufl_edu/ERcvM4DC8ppArotW-k3Y6FsBFF2hA66OUcztqe2Qg96m7g?e=z8dAyF)
3. In the tab bar, under "File", click "**Import Appliance**"

![402428299-5f57f722-b82a-4254-9c79-94aa6bf6093a](https://github.com/user-attachments/assets/2e549348-1904-4dbf-81fe-ecfe53743101)

4. Select the Development Environment OVA file to import

![402428603-03ac267d-d5d3-47b3-8a71-eafa97fa2782](https://github.com/user-attachments/assets/90ec0090-8998-4f94-a274-42932a0c0047)

5. Start the Virtual Machine

![402430004-7dd2399d-3453-4af8-916c-4f690c7713ab](https://github.com/user-attachments/assets/5178e047-e467-47aa-b12f-4a9569269ded)

*Note: Credentials to the VM are `student:cop3504` (username:password)*

6. Open a terminal (on the left tab bar) and execute the command `./get_ip.sh`


![402429760-bc5e4cb3-3ec3-4d49-8d1d-db5dba6ce39f](https://github.com/user-attachments/assets/5b2e2f40-067b-45e2-b31e-ac7587dfcedd)

![402429888-02978822-ae13-4387-bfa7-b44108ac5550](https://github.com/user-attachments/assets/73e0141d-f96c-4ac8-9c09-618e7ed5e291)



The is your virtual environment's local IP address and is unique to your machine. Keep track of this IP address for the next steps.

### VSCode

1. Install the Remote SSH Extension

![402435902-4864fb06-fce1-4829-ae1e-85b0f9878cde](https://github.com/user-attachments/assets/55150c30-53c9-4bb2-9347-fd78775bc0d4)


2. Open the Command-Palette `<F1>` and select "Remote-SSH: Connect to Host"

![402436372-92a3dbda-bc27-45b9-aef8-ea624a57bb8a](https://github.com/user-attachments/assets/73535bd8-f72d-493c-9a05-fff77ce545f8)


3. Type `student@<IP-ADDRESS>` for your SSH Host, where `IP-ADDRESS` is the IP-Address from Installation: step 7.

![402437341-1ed67dc6-d522-4925-b043-fdfcaf499b35](https://github.com/user-attachments/assets/e5f6300c-97a2-45c2-b1da-f6513aad9089)



4. Select the following answers to the prompts

+ Platform of the remote host: `Linux`
+ Fingerprint is (...); Are you sure you want to continue: `Yes`
+ Password for SSH Host: `cop3504`


5. You are now connected to the development environment! You may now create a folder and begin working.

   Hint: You may also want a terminal for more control over the environment, Open a terminal with `` Ctrl+Shift+` ``
   

### Jetbrains: Pycharm & CLion

**Initial setup**
1. Create a new project on your local system, or open an existing one that you'd like to upload to the VM.

![image](https://github.com/user-attachments/assets/e9abdd60-5fae-48b7-ba0f-593584719c3c)

2. Open settings with `Ctrl+Alt+S` and navigate to `Build, Execution, Deployment` -> `Toolchains`.

![image](https://github.com/user-attachments/assets/07cfe502-eff3-4336-a639-b61a986b5f62)

3. Click the plus in the top-left corner and click "Remote Host"

![image](https://github.com/user-attachments/assets/7f0f1c64-7bab-4f80-903f-3bc93df49af6)


4. **Click the Gear next to Credentials** and click the plus. Enter the following information:

    - The Development Environment's IP address in the host box
    - "22" in the port box
    - Username: `student`
    - Authentication type: Password
    - Password: `cop3504`. Check the "save password" option to avoid needing to type this in repeatedly when working

![image](https://github.com/user-attachments/assets/a87f95f7-899e-45e0-8d13-5dfb3c79f680)

5. Click Test your connection.

![image](https://github.com/user-attachments/assets/77e1237c-566c-42dd-b147-a6256cad60cc)

**For future projects, only the following steps need to be done each project.**

6. Open settings with `Ctrl+Alt+S` and navigate to Execution, Deployment -> Deployment, click the plus, and add a new SFTP configuration. Give it the same name as your current project.
![image](https://github.com/user-attachments/assets/a5f5383b-07ca-49bc-b24d-90997d00bb36)

7. Ensure the "Visible only for this project" box and click the dropdown for SSH configuration. Select the configuration that was made in step 4, which should be called "student@<IP_ADDRESS>".

![image](https://github.com/user-attachments/assets/1005b14b-9381-4b89-8f76-0916cd513309)

8. Click the "Mappings" tab on the top of the window. In the deployment path box, click the folder. Navigate to the folder on the virtual machine where your files are housed.
  - If you don't have a project folder on the virtual machine yet, open a terminal on it and create a directory in which you'd like your files to be housed with the `mkdir` command. You may also use the GUI to create a directory by clicking on the folder icon on the left side of the screen, navigating to the appropriate folder, right-clicking, and creating a new folder.

![image](https://github.com/user-attachments/assets/2079003e-c764-4682-b6c5-9d43ae98eae2)

![image](https://github.com/user-attachments/assets/b3b1ac63-2037-4ea5-b2a9-ac3fdffb47f3)


9. **CLion Only.** Navigate to Build, Execution, Deployment -> CMake in settings and create a new profile. Change the Toolchain to be Remote Host. Leave everything else default.
![image](https://github.com/user-attachments/assets/cac1580f-ee8d-4757-9262-15e94d61a4a5)


10. Build and run the project with `Shift+F10` or via the run button.
![image](https://github.com/user-attachments/assets/859db330-5c44-4ad4-8593-52b5881cc1b9)


### Other IDEs
Any other IDEs that support remote development via SSH should work. However, you will have to read their specific documentation for setup. Feel free to use any tooling that suits you!

Credentials for the development environment:
- Username: `student`
- Password: `cop3504`

## Usage

Command-line projects can be tested and ran directly from your IDE or from within the virtual machine.

Graphical projects **must** be run from within the virtual machine. 
