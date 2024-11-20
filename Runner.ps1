function Decrypt-Script {
    param (
        [string]$EncryptedScript,
        [string]$Password
    )

    try {
        # Convert the encrypted script from Base64 back to bytes
        $encryptedBytes = [Convert]::FromBase64String($EncryptedScript)
    } catch {
        Write-Host "Error: The Base64 string is invalid."
        return
    }

    # Define the key and IV used for encryption (Should be the same as during encryption)
    $key = [System.Text.Encoding]::UTF8.GetBytes($Password.PadRight(32, ' ')) 
    $iv = [System.Text.Encoding]::UTF8.GetBytes("1234567890123456")  

    # Create AES decryption object
    $aes = New-Object System.Security.Cryptography.AesManaged
    $aes.Key = $key
    $aes.IV = $iv

    try {
        # Decrypt the script bytes
        $decryptor = $aes.CreateDecryptor($aes.Key, $aes.IV)
        $decryptedBytes = $decryptor.TransformFinalBlock($encryptedBytes, 0, $encryptedBytes.Length)

        # Convert decrypted bytes back to the original string (PowerShell script)
        $decryptedScript = [System.Text.Encoding]::UTF8.GetString($decryptedBytes)
    } catch {
        Write-Host "Error: Decryption failed. Ensure the key and IV are correct."
        return
    }

    # Now execute the decrypted script
    try {
    # Execute the decrypted script
    Invoke-Expression -Command $decryptedScript
} catch {
    Write-Host "Error executing the script: $_"
}

}

# Example: Load the encrypted script (base64 encoded)
$EncryptedScript = Read-Host -Prompt "Enter the script HASH"

# Prompt the user to enter the password
$Password = Read-Host -Prompt "Enter password"
cls
Write-Host "Decryption succsess the script is running:"

# Call the decryption function with the entered password
Decrypt-Script -EncryptedScript $EncryptedScript -Password $Password
