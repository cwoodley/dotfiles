# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=50000
# End of lines configured by zsh-newuser-install

export EDITOR=nvim
export VISUAL=nvim

alias reload="source ~/.zshrc"

source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"

if [[ -r ~/aliases ]]; then
    source ~/aliases
fi

if [[ -d $HOME/.local/bin ]] ; then
  path+=("$HOME/.local/bin")
fi

if [[ -d $HOME/go ]] ; then
  export GOPATH="$HOME/go"
  path+=("$GOPATH/bin")
fi

export PATH
