$Pokaymon = 'Pokémon'
$POKAYMON = 'POKÉMON'
$pokaymon = 'pokémon'

$HOSTNAME = [Environment]::MachineName.toLower()

function Get-PokemonFile {
    switch ($HOSTNAME) {
        "armarouge" { $pokemonFile = 'Armarouge.txt'; break }
        "ceruledge" { $pokemonFile = 'Ceruledge.txt'; break }
        "charcadet" { $pokemonFile = 'Charcadet.txt'; break }
        default { $pokemonFile = 'Ditto.txt'; break }
    }
    return "$DOTCADENCE\Pokémon\$pokemonFile"
}

function cadefetch {
    fastfetch --logo file --file (Get-PokemonFile)
}
cadefetch

