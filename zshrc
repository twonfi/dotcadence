export PATH=$PATH:/home/twonum/.local/bin

#alias cadefetch="krabby name charcadet --no-title --padding-left 2 | fastfetch --logo-type file --logo -"
function cadefetch {
     fastfetch --logo-type file --logo $($DOTCADENCE/cadefetch_pokemon_path)
}
cadefetch
echo

alias stow="stow -t $HOME"

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

bindkey -e

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# Oh My Zsh!
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME=""
plugins=(git)
zstyle ':omz:update' mode disabled
source $ZSH/oh-my-zsh.sh

# Debian packages
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(oh-my-posh init zsh --config $DOTCADENCE/cadence.omp.toml)"

