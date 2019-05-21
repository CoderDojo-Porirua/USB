# USB Stick installer

This project allows for a USB stick to be setup with portable versions of VS Code, Git, Node and other useful apps. The intention for the USB stick is for it to be distributed to students, and they will be able to run the environment both at CoderDojo sessions and at home.

## Installation

Clone this repository to the root of a USB stick. Within CMD or PowerShell, change your directory to the root of the USB stick and then run:

```powershell
git clone https://github.com/CoderDojo-Porirua/USB.git
```

Then run the _get.ps1_ PowerShell script in the _USB_ folder to download all required programs to the USB stick:

```powershell
USB\get.ps1
```

This script will download and unzip Node, VS Code, Arduino and mongoDB, and download and silently extract Git. It will also install some portable apps from PortApps.com (Firefox Developer Edition, Discord, Docker Toolbox and Kitty).

## Launching

An Autorun file has been included. This runs the _USB\run.ps1_ file, which configures environment variables for Git and Node, and then launches VS Code from the USB stick. The script can also be run manually:

```powershell
.\USB\run.ps1
```

## Issues

The USB stick is setup and run with PowerShell scripts, inside the USB folder. If you have problems running these scripts, it may be because of your computer's Execution Policy. To check the current policy setting, in an Administrator PowerShell run:

```powershell
Get-ExecutionPolicy
```

If the policy is _Restricted_, change it to one of the following (from least to most permissive) to allow scripts to run:

```powershell
Set-ExecutionPolicy RemoteSigned
Set-ExecutionPolicy Unrestricted
Set-ExecutionPolicy Bypassed
```

From the [Microsoft website](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy)

- **Bypass.** Nothing is blocked and there are no warnings or prompts.
- **RemoteSigned.** Requires that all scripts and configuration files downloaded from the Internet are signed by a trusted publisher. The default execution policy for Windows server computers.
- **Restricted.** Doesn't load configuration files or run scripts. The default execution policy Windows client computers.
- **Unrestricted.** Loads all configuration files and runs all scripts. If you run an unsigned script that was downloaded from the Internet, you are prompted for permission before it runs. The default execution policy for non-Windows computers and cannot be changed.
