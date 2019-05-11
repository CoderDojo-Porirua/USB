# USB Stick installer

This project allows for a USB Stick to be setup with portable versions of VS Code, Git, Node and other useful apps.

## Installation

After cloning this repository (for the E drive, run `git clone https://github.com/CoderDojo-Porirua/USBStick.git E:\`) to the root of a USB stick, run the _get.ps1_ PowerShell script to download all required programs:

```powershell
.\System\get.ps1
```

## Launching

An Autorun file has been included. This runs the _System\run.bat_ file, which configures environment variables for Git and Node and then launches VS Code from the USB stick. The script can also be run manually:

```powershell
.\System\run.ps1
```
