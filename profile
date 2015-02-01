export PATH=~/bin:~/dotfiles/bin:~/usr/local/bin:$PATH

export EDITOR="atom -W"

[ "$TERM" = "xterm" ] && TERM="xterm-256color"

#export GREP_OPTIONS='--color=always'

function ppgrep() { pgrep "$@" | xargs ps -f -p; }

export HOMEBREW_GITHUB_API_TOKEN=8005534e6decc77333b2baef4810d73c295f9994
# java home
export JAVA_HOME=$(/usr/libexec/java_home)

export GITAWAREPROMPT="$HOME/dotfiles/git-aware-prompt"
source $GITAWAREPROMPT/main.sh
export PS1="\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

# rbenv
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# rubocop path
export RUBOCOP_HOME=/Users/u0157312/.rvm/gems/ruby-2.1.5/bin #"$(dirname $(which rubocop))"
export PATH="$RUBOCOP_HOME:$PATH"

# bash aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# oracle instantclient
ORACLE_HOME="$HOME/tools/instantclient_11_2"
export NLS_LANG="AMERICAN_AMERICA.UTF8" # or DANISH_DENMARK.WE8ISO8859P1
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$ORACLE_HOME"
export TNS_ADMIN="$ORACLE_HOME" # or where you will place tnsnames.ora
export PATH="$PATH:$ORACLE_HOME"

#prefer homebrew git
export PATH="/usr/local/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
