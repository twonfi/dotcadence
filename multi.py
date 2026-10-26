import sys
from platform import node


def get_pokemon_file() -> str:
    hostname = node().split('.')[0]

    match hostname:
        case 'armarouge':
            return 'Armarouge.txt'
        case 'ceruledge':
            return 'Ceruledge.txt'
        case 'charcadet':
            return 'Charcadet.txt'
        case _:
            return 'Ditto.txt'


if __name__ == '__main__':
    try:
        match sys.argv[1]:
            case 'pokemon_file':
                print(get_pokemon_file())
            case _:
                print('invalid command')
                sys.exit(1)
    except IndexError:
        print('you have to supply a command, Cadence!')

