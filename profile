DOTFILES_HOME=$HOME/dotfiles
export PATH=/bin:/sbin:/usr/bin:~/bin:~/usr/local/bin:$PATH

alias atom="atom-beta"
export EDITOR="atom -W"
export VISUAL="atom -W"

# Replace bsdtar with gnutar
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# Color OS X Command Prompt
export CLICOLOR=1export
export LSCOLORS=dxfxcxdxbxegedabagacad
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=10000                   # big big history
export HISTFILESIZE=10000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Enable globbing
shopt -s extglob

# Save and reload the history after each command finishes
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# docker
#if [ -d "$HOME/.boot2docker" ]; then
#  export DOCKER_TLS_VERIFY=1
#  export DOCKER_HOST=tcp://192.168.59.103:2376
#  export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm
#fi

[ "$TERM" = "xterm" ] && TERM="xterm-256color"

function ppgrep() { pgrep "$@" | xargs ps -f -p; }

export HOMEBREW_GITHUB_API_TOKEN=8005534e6decc77333b2baef4810d73c295f9994

# python
alias qtpython="ipython qtconsole --pylab=inline"
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages:$PYTHONPATH

# java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

export GITAWAREPROMPT="$DOTFILES_HOME/git-aware-prompt"
source $GITAWAREPROMPT/main.sh
export PS1="\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

# rbenv
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# rubocop
export RUBOCOP_HOME=$HOME/.rvm/gems/ruby-2.1.5/bin #"$(dirname $(which rubocop))"
export PATH="$RUBOCOP_HOME:$PATH"

# bash aliases
if [ -f $DOTFILES_HOME/bash_aliases ]; then
. $DOTFILES_HOME/bash_aliases
fi

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# oracle instantclient
ORACLE_HOME="/opt/oracle/instantclient_11_2"
if [ -d $ORACLE_HOME ]; then
	export NLS_LANG="AMERICAN_AMERICA.UTF8" # or DANISH_DENMARK.WE8ISO8859P1
	export OCI_DIR=$ORACLE_HOME
	export DYLD_FALLBACK_LIBRARY_PATH=$DYLD_LIBRARY_PATH
	export TNS_ADMIN="$ORACLE_HOME" # or where you will place tnsnames.ora
	export PATH="$PATH:$ORACLE_HOME"
fi

# llvm
#export LDFLAGS-L/usr/local/opt/llvm/lib
#CPPFLAGS: -I/usr/local/opt/llvm/include

# perlbrew
if [ -s ~/perl5/perlbrew/etc/bashrc ]; then
	source ~/perl5/perlbrew/etc/bashrc
fi

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# mono
export MONO_GAC_PREFIX='/usr/local'
