# Mac OS X uses path_helper and /etc/paths.d to preload PATH, clear it out first
if [ -x /usr/libexec/path_helper ]; then
  PATH=''
  eval `/usr/libexec/path_helper -s`
fi

# Put Homebrew at the head of the path
# /usr/local/bin is also first in /etc/paths
# Added home directory bin
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/homebrew/bin:$PATH"

# if rbenv is present, configure it for use
if which rbenv &> /dev/null; then
  # Put the rbenv entry at the front of the line
  export PATH="$HOME/.rbenv/bin:$PATH"

  # enable shims and auto-completion
  eval "$(rbenv init -)"
fi

# Add Postgresql to PATH on Mac
if [[ $IS_MAC -eq 1 ]]; then
  export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin":$PATH
  export PGDATA='/Users/aronchick/Library/Application Support/Postgres/var'
fi

# Add RVM to PATH for scripting, if rvm is present
if which rvm-prompt &> /dev/null; then
  export PATH=$HOME/.rvm/bin:$PATH
fi

# if stdin is a terminal (unnecessary in .zshrc)
if [[ -o login ]] ; then
  # kill the ssh-agent on exit
  # trap '[[ -n "$SSH_AGENT_PID" ]] && eval `ssh-agent -k`' 0
  # start the ssh-agent if not already started
  [[ -z "$SSH_AGENT_PID" ]] && eval `ssh-agent`
  # add identities to the agent
  for file in ~/.ssh/*.pub; do ssh-add ${file:r}; done
fi
source ~/.autoenv/activate.sh
