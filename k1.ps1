# Check if the script is running with administrator privileges
If (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Restart the script as administrator
    $newProcess = New-Object System.Diagnostics.ProcessStartInfo "powershell";
    $newProcess.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"" + $MyInvocation.MyCommand.Definition + "`"";
    $newProcess.Verb = "runas";
    [System.Diagnostics.Process]::Start($newProcess) | Out-Null;
    exit;
}

# Stop the msdl service without confirmation
Stop-Service -Name "msdl" -Force

# Delete registry keys without confirmation
Remove-Item -Path "HKLM:\SOFTWARE\WOW6432Node\KVZHome" -Force -Recurse
Remove-Item -Path "HKLM:\SOFTWARE\WOW6432Node\KVHome" -Force -Recurse

# Kill processes without confirmation
Stop-Process -Name "kavkrn" -Force
Stop-Process -Name "kavgui" -Force

# Exit PowerShell
exit
