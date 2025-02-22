export PATH="$HOME/.cargo/bin/:$HOME/.local/bin:/usr/local/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=Adwaita-Dark


ZSH_THEME="eastwood"
#ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias vim=nvim
alias l=ls
alias mk="mkdir"
alias b="cd .."
alias rma="rm -rf"
alias ip="ip -c"
neofetch
