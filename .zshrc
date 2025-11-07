if [ -d $HOME/.os_specific_zsh ]; then
    for f in $HOME/.os_specific_zsh/*.zshrc; do source $f; done
fi

# alias
alias v="nvim"

if [ -d $HOME/bin ]; then
    export PATH="$HOME/bin:$PATH"
fi

