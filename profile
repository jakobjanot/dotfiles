# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

DOTFILES_HOME=$HOME/dotfiles
export PATH=:~/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH

# Set language - ensure Terminal.app doesn't overwrite it
export LC_CTYPE=da_DK.UTF-8
export LC_ALL=da_DK.UTF-8

export EDITOR="vim"
export VISUAL="atom --wait"

# Replace bsdtar with gnutar
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# Gemfury
export GEM_FURY_KEY=13xcCA-2U4tlJVqRQTuTSDzEtj9QtR5HE

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

[ "$TERM" = "xterm" ] && TERM="xterm-256color"

function ppgrep() { pgrep "$@" | xargs ps -f -p; }

# java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

export GITAWAREPROMPT="$DOTFILES_HOME/git-aware-prompt"
source $GITAWAREPROMPT/main.sh
export PS1="\w \[$txtgrn\](\$(~/.rvm/bin/rvm-prompt v)) \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

# fuzzy finding in bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# rubocop
#export RUBOCOP_HOME=$HOME/.rvm/gems/ruby-2.1.5/bin #"$(dirname $(which rubocop))"
#export PATH="$RUBOCOP_HOME:$PATH"

# bash aliases
if [ -f $DOTFILES_HOME/bash_aliases ]; then
. $DOTFILES_HOME/bash_aliases
fi

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# todo.txt
if which todo.sh > /dev/null; then eval "alias t=todo.sh"; fi

# llvm
#export LDFLAGS-L/usr/local/opt/llvm/lib
#CPPFLAGS: -I/usr/local/opt/llvm/include

# plenv
if which plenv > /dev/null; then eval "$(plenv init -)"; fi

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# python
alias qtpython="ipython qtconsole --pylab=inline"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# mono
export MONO_GAC_PREFIX='/usr/local'

# emscripten
if [ -d /opt/emsdk ]; then
  export PATH=$PATH:/opt/emsdk:/opt/emsdk/clang/e1.37.21_64bit:/opt/emsdk/node/4.1.1_64bit/bin:/opt/emsdk/emscripten/1.37.21
  source /opt/emsdk/emsdk_env.sh > /dev/null
fi

# pkgconfig
export PKG_CONFIG_PATH="/usr/local/opt/pkgconfig:$PKG_CONFIG_PATH"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
NODE_DEFAULT_VERSION=$(<"$NVM_DIR/alias/default")
export PATH="$NVM_DIR/versions/node/$NODE_DEFAULT_VERSION/bin":$PATH
