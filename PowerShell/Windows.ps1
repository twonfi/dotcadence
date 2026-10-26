# C:\Users\twonum\dotcadence
$env:DOTCADENCE = "$HOME\dotcadence"
$DOTCADENCE = $env:DOTCADENCE
$DOTCADENCE_COMMON = "$DOTCADENCE\powershell\Common.ps1"
$DOTCADENCE_SYSTEM = "$DOTCADENCE\powershell\Windows.ps1"

. $DOTCADENCE\powershell\Common.ps1

Set-Alias -Name python3 -Value py

Set-PSReadlineKeyHandler -Key Ctrl+d -Function DeleteCharOrExit

# Load Visual Studio Developer Environment
$devShellPath = "C:\Program Files\Microsoft Visual Studio\18\Community\Common7\Tools\Microsoft.VisualStudio.DevShell.dll"

if (Test-Path $devShellPath) {
    Import-Module $devShellPath
    Enter-VsDevShell -VsInstallPath "C:\Program Files\Microsoft Visual Studio\18\Community" -SkipAutomaticLocation -DevCmdArguments '-arch=x64 -host_arch=x64' | Out-Null
}

$env:INCLUDE = "C:\boost_1_92_0;$env:INCLUDE"
$env:LIB = "C:\boost_1_92_0\stage\lib;$env:LIB"

function emacs { emacs.exe -nw @args }

function mklink { cmd.exe /c mklink @args }

function less { & 'C:\Program Files\Git\usr\bin\less.exe' @args }

