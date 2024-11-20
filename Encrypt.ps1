# Clear the console window to create a fresh view
Clear-Host

# Define your username, Telegram, and GitHub links
$bannerText = @"
***************************************************************
*                    PowerShell Script                         *
*                      by Ameeraz19                            *
*                                                              *
*           Telegram: https://t.me/ameeraz19                   *
*           GitHub: https://github.com/ameeraz19               *
***************************************************************
"@

# Set the color for the banner text
$foregroundColor = "Cyan" # You can change this color to whatever you like
$backgroundColor = "Black" # You can also change the background color if needed

# Set the text colors
$host.ui.RawUI.ForegroundColor = $foregroundColor
$host.ui.RawUI.BackgroundColor = $backgroundColor

# Display the banner at the top of the window
Write-Host $bannerText

# Reset the console colors after the banner
$host.ui.RawUI.ForegroundColor = "White"
$host.ui.RawUI.BackgroundColor = "Black"

# Continue with the rest of your script
Write-Host "The script is now running!"

Add-Type -AssemblyName "System.Windows.Forms"

# Create a PowerShell form to serve as the owner window
$psWindow = New-Object System.Windows.Forms.Form
$psWindow.TopMost = $true
$psWindow.Hide()  # We hide the form since we just want it to be the owner

# Create an OpenFileDialog object
$dialog = New-Object System.Windows.Forms.OpenFileDialog
$dialog.Filter = "PowerShell Scripts (*.ps1)|*.ps1|All files (*.*)|*.*"
$dialog.Title = "Select a script file"
Write-Host "Select the script"


# Show the dialog and check if the user selected a file
if ($dialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
    $filePath = $dialog.FileName

    # Read the content of the file into the $ScriptText variable
    if (Test-Path $filePath) {
        cls
        $ScriptText = Get-Content -Path $filePath -Raw
        Write-Host 'Selected script: '$filePath

    } else {
        Write-Host "Error: The file path provided does not exist."
        exit
    }

    # Convert the script to bytes
    $scriptBytes = [System.Text.Encoding]::UTF8.GetBytes($ScriptText)

    # Prompt user to input the encryption password
    $password = Read-Host "Enter your encryption password (you will use this password in runner.ps1)"

    # Define the encryption key (32-byte key for AES-256)
    $key = [System.Text.Encoding]::UTF8.GetBytes($password.PadRight(32, ' '))  # 32-byte key for AES
    $iv = [System.Text.Encoding]::UTF8.GetBytes("1234567890123456")  # 16-byte IV

    # Create AES encryption object
    $aes = New-Object System.Security.Cryptography.AesManaged
    $aes.Key = $key
    $aes.IV = $iv

    # Encrypt the script bytes
    $encryptor = $aes.CreateEncryptor($aes.Key, $aes.IV)
    $encryptedBytes = $encryptor.TransformFinalBlock($scriptBytes, 0, $scriptBytes.Length)

    # Convert encrypted bytes to Base64 string
    $encryptedScript = [Convert]::ToBase64String($encryptedBytes)

    # Print the encrypted script to the screen
    Write-Host "Encrypted Script (Copy this hash and paste it on runner.ps1 when asked):" \r\n
    Write-Host $encryptedScript
} else {
    Write-Host "No file selected. Exiting..."
}
