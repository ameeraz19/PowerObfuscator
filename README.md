<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PowerObfuscator README</title>
</head>
<body>
    <h1>PowerObfuscator</h1>
    <p>This repository contains two PowerShell scripts designed to encrypt and run PowerShell scripts securely.</p>

    <h2>Important Note</h2>
    <p>This script <strong>will NOT</strong> help you bypass antivirus software. It only helps you bypass the signature database layer. If you're interested in bypassing antivirus software, contact me on <strong>TELEGRAM</strong>: <a href="https://t.me/ameeraz19" target="_blank">ameeraz19</a>.</p>

    <h2>PowerShell Script Encryption and Decryption</h2>

    <h3>Overview</h3>
    <p>This project consists of two PowerShell scripts that provide a secure way to encrypt and decrypt PowerShell scripts using AES-256 encryption.</p>
    <ul>
        <li><strong>Encrypt.ps1:</strong> Encrypts a PowerShell script with a password and outputs the encrypted script as a Base64 string.</li>
        <li><strong>Runner.ps1:</strong> Accepts the encrypted script and decrypts it for execution using the provided password.</li>
    </ul>

    <h3>Prerequisites</h3>
    <ul>
        <li>PowerShell 5.0 or higher.</li>
        <li>Basic knowledge of PowerShell scripting and encryption.</li>
    </ul>

    <h3>How to Use</h3>

    <h4>1. Encrypting a PowerShell Script (Encrypt.ps1)</h4>
    <ol>
        <li>Download or clone this repository.</li>
        <li>Open PowerShell and run the <code>Encrypt.ps1</code> script.</li>
        <li>The script will prompt you to select the <code>.ps1</code> or any script file you want to encrypt.</li>
        <li>You will then be asked to enter a password that will be used for encryption.</li>
        <li>The script will encrypt the file, and the encrypted script will be displayed in Base64 format.</li>
        <li>Copy the Base64 string and save it for later use in <code>Runner.ps1</code>.</li>
    </ol>

    <h4>2. Decrypting and Running the Encrypted Script (Runner.ps1)</h4>
    <ol>
        <li>Run the <code>Runner.ps1</code> script.</li>
        <li>You will be prompted to paste the encrypted Base64 string (the output from <code>Encrypt.ps1</code>).</li>
        <li>You will also need to enter the same password used during encryption.</li>
        <li>The script will decrypt the Base64 string and execute the PowerShell script.</li>
    </ol>

    <h3>Example Use Case</h3>

    <h4>Encrypting a Script:</h4>
    <ol>
        <li>Run <code>Encrypt.ps1</code>.</li>
        <li>Select the script you want to encrypt.</li>
        <li>Choose a password for encryption.</li>
        <li>The script will provide you with a Base64-encoded string.</li>
        <li>Save this string for future use.</li>
    </ol>

    <h4>Running the Encrypted Script:</h4>
    <ol>
        <li>In <code>Runner.ps1</code>, paste the encrypted string and enter the same password used for encryption.</li>
        <li>The original script (e.g., <code>example.ps1</code>) will be decrypted and executed.</li>
    </ol>

    <h3>Notes</h3>
    <ul>
        <li>The AES key used for encryption and decryption must match. If the password is incorrect, the decryption will fail.</li>
        <li>The IV (Initialization Vector) used in both scripts is fixed ("1234567890123456"). For stronger security, consider using a unique IV for each encryption.</li>
        <li>This solution ensures that the original script content remains secure while being transferred or shared.</li>
    </ul>

    <h2>License</h2>
    <p>This project is licensed under the MIT License - see the LICENSE file for details.</p>
</body>
</html>
