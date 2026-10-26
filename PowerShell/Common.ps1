$HOSTNAME = [Environment]::MachineName.toLower()

function Update-DotCadence {
    Push-Location -Path $DOTCADENCE
    git pull
    Pop-Location
}

. $DOTCADENCE/PowerShell/CadefetchPokemon.ps1
cadefetch

oh-my-posh init pwsh --config $HOME/dotcadence/cadence.omp.toml | Invoke-Expression

