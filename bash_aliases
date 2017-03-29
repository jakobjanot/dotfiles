function rails_server {
  printf "\e]0;$1 server\a"
  KG_SITE="$1" bundle exec rails s
  printf '\e]0;\a'
}
for site in jura revisor juridik hr sundhed abf; do
  alias ${site}="rails_server ${site}"
done

alias redisstart='sudo launchctl start io.redis.redis-server'
alias redisstop='sudo launchctl stop io.redis.redis-server'

alias grep='grep --color=auto'
alias rgrep='grep -r'
alias rbgrep='rgrep --include \*.rb'

#alias bundle=~/bin/bundle-and-ctags

#function rspec-without-terminal-kill {
#  trap 'stty echo' EXIT
#  trap 'echo "foobar trap"' EXIT
#  bundle exec rspec $@
#}

#alias rspec="trap 'stty echo' EXIT && trap 'echo \"foobar trap\"' EXIT && bundle exec rspec $@"
