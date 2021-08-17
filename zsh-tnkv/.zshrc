# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PROMPT="%B%F{green}%m%f%b%F{white}:%f%F{red}[%f%B%F{blue}%n%f%b%F{red}]%f%F{red}:%f%F{magenta}%~%B$%b%b%f "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000

source ~/build/tnkv-dotfiles/zsh-tnkv/aliasrc
source ~/build/tnkv-dotfiles/zsh-tnkv/sh-autosuggestions/zsh-autosuggestions.zsh
source ~/build/tnkv-dotfiles/zsh-tnkv/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
compinit

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
