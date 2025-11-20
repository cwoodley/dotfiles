# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=50000
# End of lines configured by zsh-newuser-install

if [[ "$OSTYPE" != "darwin"* ]]; then
  source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

source ~/zsh/aliases.zsh

if [[ "$OSTYPE" != "darwin"* ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  autoload -Uz compinit
  compinit
fi

eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
