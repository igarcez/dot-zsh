# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -d $HOME/.os_specific_zsh ]; then
    for f in $HOME/.os_specific_zsh/*.zshrc; do source $f; done
fi

if [ -d $HOME/.zsh_secrets ]; then
    for f in $HOME/.zsh_secrets/*.zshrc; do source $f; done
fi

# alias
alias v="nvim"

if [ -d $HOME/bin ]; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d $HOME/powerlevel10k ]; then
    source $HOME/powerlevel10k/powerlevel10k.zsh-theme
fi

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
