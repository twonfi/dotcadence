# /home/twonum/dotcadence
$env:DOTCADENCE = "$HOME/dotcadence"
$DOTCADENCE = $env:DOTCADENCE
$DOTCADENCE_COMMON = "$DOTCADENCE/PowerShell/Common.ps1"
$DOTCADENCE_SYSTEM = "$DOTCADENCE/PowerShell/Linux.ps1"

. $DOTCADENCE_COMMON

Set-Alias -Name python3 -Value py

function emacs { emacs -nw @args }


