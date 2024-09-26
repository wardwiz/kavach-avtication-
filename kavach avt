# Stop the msdl service
Stop-Service -Name "msdl" -Force

# Delete registry keys
Remove-Item -Path "HKLM:\SOFTWARE\WOW6432Node\KVZHome" -Force
Remove-Item -Path "HKLM:\SOFTWARE\WOW6432Node\KVHome" -Force

# Kill processes
Stop-Process -Name "kavkrn" -Force
Stop-Process -Name "kavgui" -Force

# Exit PowerShell
exit
