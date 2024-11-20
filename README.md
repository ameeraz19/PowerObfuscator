# PowerObfuscator

This repository contains two PowerShell scripts designed to encrypt and run PowerShell scripts securely.

### Notes
- The AES key used for encryption and decryption must match. If the password is incorrect, the decryption will fail.
- The IV (Initialization Vector) used in both scripts is fixed ("1234567890123456"). For stronger security, consider using a unique IV for each encryption.
- This solution ensures that the original script content remains secure while being transferred or shared.
- This script **will NOT** help you bypass antivirus software. It only helps you bypass the signature database layer. If you're interested in bypassing antivirus software, contact me on **TELEGRAM**: [ameeraz19](https://t.me/ameeraz19).

## PowerShell Script Encryption and Decryption

### Overview
This project consists of two PowerShell scripts that provide a secure way to encrypt and decrypt PowerShell scripts using AES-256 encryption.

- **Encrypt.ps1**: Encrypts a PowerShell script with a password and outputs the encrypted script as a Base64 string.
- **Runner.ps1**: Accepts the encrypted script and decrypts it for execution using the provided password.

### Prerequisites
- PowerShell 5.0 or higher.
- Basic knowledge of PowerShell scripting and encryption.

### How to Use

#### 1. Encrypting a PowerShell Script (Encrypt.ps1)
1. Download or clone this repository.
```bash
git clone https://github.com/ameeraz19/PowerObfuscator.git
cd PowerObfuscator
```

2. Open PowerShell and run the `Encrypt.ps1` script.
```bash
Powershell
.\Encrypt.ps1
```
3. The script will prompt you to select the `.ps1` or any script file you want to encrypt.
4. You will then be asked to enter a password that will be used for encryption.
5. The script will encrypt the file, and the encrypted script will be displayed in Base64 format.
6. Copy the Base64 string and save it for later use in `Runner.ps1`.

#### 2. Decrypting and Running the Encrypted Script (Runner.ps1)
1. Run the `Runner.ps1` script.
```bash
Powershell
.\Runner.ps1
```
2. You will be prompted to paste the encrypted Base64 string (the output from `Encrypt.ps1`).
3. You will also need to enter the same password used during encryption.
4. The script will decrypt the Base64 string and execute the PowerShell script.
   
============================================================================================
 This program is provided for educational and research purposes. It should not be used for malicious activities.

============================================================================================


