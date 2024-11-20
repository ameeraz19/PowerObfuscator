# PowerObfuscator
This repository contains two PowerShell scripts designed to encrypt and Run PowerShell scripts securely.

**# important note**
This sctipt **Will NOT** help you bypass the Anti-Viruse Software, its only Help you bypass Signature Database layer, anyway if you intresting to bypass anti virus contact me on **TELEGRAM: [ameeraz19]([url](https://t.me/ameeraz19))**

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
Step 1: Download or clone this repository.
Step 2: Open PowerShell and run the Encrypt.ps1 script.
Step 3: The script will prompt you to select the .ps1 pr any script file you want to encrypt.
Step 4: You will then be asked to enter a password that will be used for encryption.
Step 5: The script will encrypt the file, and the encrypted script will be displayed in Base64 format.
Step 6: Copy the Base64 string and save it for later use in Runner.ps1.
2. Decrypting and Running the Encrypted Script (Runner.ps1)
Step 1: Run the runner.ps1 script.
Step 2: You will be prompted to paste the encrypted Base64 string (the output from Encrypt.ps1).
Step 3: You will also need to enter the same password used during encryption.
Step 4: The script will decrypt the Base64 string and execute the PowerShell script.
Example Use Case
Encrypting a script:
Run Encrypt.ps1
Select script
Choose password
Then will gives you a Base64-encoded string.
Save this string for future use.
Running the encrypted script:
In Runner.ps1, paste the encrypted string and enter the same password.
The original example.ps1 script will be decrypted and executed.
Notes
The AES key used for encryption and decryption must match. If the password is incorrect, the decryption will fail.
The IV (Initialization Vector) used in both scripts is fixed ("1234567890123456"). For stronger security, consider using a unique IV per encryption.
This solution ensures that the original script content remains secure while being transferred or shared.
License
This project is licensed under the MIT License - see the LICENSE file for details.

