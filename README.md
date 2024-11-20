PowerObfuscator
This repository contains two PowerShell scripts designed to encrypt and run PowerShell scripts securely.

Important Note
This script will NOT help you bypass antivirus software. It only helps you bypass the signature database layer. If you're interested in bypassing antivirus software, contact me on TELEGRAM: ameeraz19.

PowerShell Script Encryption and Decryption
Overview
This project consists of two PowerShell scripts that provide a secure way to encrypt and decrypt PowerShell scripts using AES-256 encryption.

Encrypt.ps1: Encrypts a PowerShell script with a password and outputs the encrypted script as a Base64 string.
Runner.ps1: Accepts the encrypted script and decrypts it for execution using the provided password.
Prerequisites
PowerShell 5.0 or higher.
Basic knowledge of PowerShell scripting and encryption.
How to Use
1. Encrypting a PowerShell Script (Encrypt.ps1)
Download or clone this repository.
Open PowerShell and run the Encrypt.ps1 script.
The script will prompt you to select the .ps1 or any script file you want to encrypt.
You will then be asked to enter a password that will be used for encryption.
The script will encrypt the file, and the encrypted script will be displayed in Base64 format.
Copy the Base64 string and save it for later use in Runner.ps1.
2. Decrypting and Running the Encrypted Script (Runner.ps1)
Run the Runner.ps1 script.
You will be prompted to paste the encrypted Base64 string (the output from Encrypt.ps1).
You will also need to enter the same password used during encryption.
The script will decrypt the Base64 string and execute the PowerShell script.
Example Use Case
Encrypting a Script:
Run Encrypt.ps1.
Select the script you want to encrypt.
Choose a password for encryption.
The script will provide you with a Base64-encoded string.
Save this string for future use.
Running the Encrypted Script:
In Runner.ps1, paste the encrypted string and enter the same password used for encryption.
The original script (e.g., example.ps1) will be decrypted and executed.
Notes
The AES key used for encryption and decryption must match. If the password is incorrect, the decryption will fail.
The IV (Initialization Vector) used in both scripts is fixed ("1234567890123456"). For stronger security, consider using a unique IV for each encryption.
This solution ensures that the original script content remains secure while being transferred or shared.
License
This project is licensed under the MIT License - see the LICENSE file for details.
