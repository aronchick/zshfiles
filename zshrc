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
source  ${HOME}/Code/dotfiles/z/z.sh

ZSH_THEME="ys"

DISABLE_UPDATE_PROMPT=true
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities digitalcloud_rsa
zstyle :omz:plugins:ssh-agent lifetime


