$Pokaymon = 'Pokémon'
$POKAYMON = 'POKÉMON'
$pokaymon = 'pokémon'

$HOSTNAME = [Environment]::MachineName.toLower()

. $DOTCADENCE/PowerShell/CadefetchPokemon.ps1
cadefetch

oh-my-posh init pwsh --config $HOME/dotcadence/cadence.omp.toml | Invoke-Expression

