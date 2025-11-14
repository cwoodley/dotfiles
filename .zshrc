source ./zsh/aliases.zsh

if command -v nvim &> /dev/null; then
    export EDITOR="nvim"
    export VISUAL="nvim"
else
    export EDITOR="nano"
    export VISUAL="nano"
fi

# Starship
if command -v starship &> /dev/null; then
eval "$(starship init zsh)"
fi
