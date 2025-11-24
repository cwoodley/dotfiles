# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=50000
# End of lines configured by zsh-newuser-install


source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

if [[ -r ~/.aliasrc ]]; then
    . ~/.aliasrc
fi
