export ZSH=$HOME/Code/dotfiles/ohmyzsh
export DOTFILES=$HOME/Code/dotfiles
export ANTIGEN=$DOTFILES/antigen

source $ANTIGEN/antigen.zsh

source ~/.zsh/checks.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/zsh_hooks.zsh
#source ~/.zsh/hitch.zsh
# source /opt/github/env.sh
source  $DOTFILES/z/z.sh
source ~/.bin/tmuxinator.zsh

source $ANTIGEN/bundles.zsh

ZSH_THEME="ys"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*¬

source $ZSH/oh-my-zsh.sh
