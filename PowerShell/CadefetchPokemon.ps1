function Get-PokemonFilePath {
    switch ($HOSTNAME) {
        "armarouge" { $pokemonFile = 'Armarouge.txt'; break }
        "ceruledge" { $pokemonFile = 'Ceruledge.txt'; break }
        "charcadet" { $pokemonFile = 'Charcadet.txt'; break }
        default { $pokemonFile = 'Ditto.txt'; break }
    }
    return "$env:DOTCADENCE/Pokémon/$pokemonFile"
}

function cadefetch {
    fastfetch --logo file --file (Get-PokemonFilePath)
}

