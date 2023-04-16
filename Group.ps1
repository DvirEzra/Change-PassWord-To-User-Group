# Specify here the username whose password to reset.
$file = Get-Content -Path c:\temp\pass.txt
# Import the System.Web .NET assembly
foreach ($username in $file)
{
Add-Type -AssemblyName 'System.Web'
# Generate a random password that is 12-characters long with five non-AlphaNumeric characters.
$randomPassword = [System.Web.Security.Membership]::GeneratePassword(20, 5)
# Convert the plain text password to a secure string.
$newPassword = $randomPassword | ConvertTo-SecureString -AsPlainText -Force
# Reset the user password
Set-ADAccountPassword -Identity $username -NewPassword $newPassword -Reset
# Display the new password
$randomPassword
}