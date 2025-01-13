# Script: OrganizeFiles.ps1
# Description: Organizes files in a directory by their extensions.

param (
    [string]$SourceDirectory = ".", # Default is the current directory
    [switch]$IncludeSubfolders = $false
)

# Check if the source directory exists
if (-Not (Test-Path -Path $SourceDirectory)) {
    Write-Host "Directory '$SourceDirectory' does not exist." -ForegroundColor Red
    exit
}

# Get all files in the directory (optionally include subfolders)
$searchOption = if ($IncludeSubfolders) { [System.IO.SearchOption]::AllDirectories } else { [System.IO.SearchOption]::TopDirectoryOnly }
$files = Get-ChildItem -Path $SourceDirectory -File -Recurse:$IncludeSubfolders

if ($files.Count -eq 0) {
    Write-Host "No files found in the directory." -ForegroundColor Yellow
    exit
}

# Process each file
foreach ($file in $files) {
    $extension = $file.Extension.TrimStart(".").ToUpper()
    if ([string]::IsNullOrEmpty($extension)) {
        $extension = "NO_EXTENSION"
    }

    # Create a subfolder for the extension if it doesn't exist
    $targetFolder = Join-Path -Path $SourceDirectory -ChildPath $extension
    if (-Not (Test-Path -Path $targetFolder)) {
        New-Item -Path $targetFolder -ItemType Directory | Out-Null
    }

    # Move the file to the target folder
    $targetPath = Join-Path -Path $targetFolder -ChildPath $file.Name
    Move-Item -Path $file.FullName -Destination $targetPath -Force
    Write-Host "Moved $($file.Name) to $targetFolder"
}

Write-Host "Organization complete!" -ForegroundColor Green
pause