# PowerShell Sorting Script

<h2>Description</h2>
The PowerShell File Organizer is a simple script designed to automate file organization by categorizing files in a directory based on their extensions. It creates subfolders named after the file types and moves files into the appropriate folders. This script is ideal for simplifying tedious tasks and demonstrates foundational PowerShell scripting techniques.
<br />

<h2>Features</h2>

- Extension-Based Organization: Automatically identifies file extensions and organizes files into corresponding folders.
- Customizable Directory: Allows users to specify the directory to organize, with a default option for the current working directory.
- Subfolder Support: Includes an option to process subfolders, ensuring comprehensive organization.
- Dynamic Folder Creation: Automatically creates folders for file types that don’t already exist.
- Error Handling: Provides informative messages for missing directories or empty folders.
  
<h2>Setup Instructions</h2>

- Download the Script
- Save the script file as OrganizeFiles.ps1 to your desired location.
- Open PowerShell
- Launch PowerShell in the directory where the script is saved or navigate to it using cd.
- Run the Script
  - Use the following command to execute the script:
    - .\OrganizeFiles.ps1 -SourceDirectory "C:\Path\To\Your\Folder" -IncludeSubfolders
      - Replace "C:\Path\To\Your\Folder" with the path to the folder you want to organize.
      - Use the -IncludeSubfolders switch to process files in subdirectories as well.
- View the Results
- Check the directory for newly created folders based on file extensions.

<h2>Languages and Utilities Used</h2>

- <b>PowerShell</b> 

<h2>Environments Used </h2>

- <b>Windows 11</b>

<h2>Program walk-through:</h2>

<p align="center">
  <a href="https://github.com/rlangc/Test_RCL.git"><b>Return to Home</b></a>
