# Some aliases
# TODO: move to .bash_aliases
alias setclip="xclip -selection c"
alias getclip="xclip -selection clipboard -o"

if [ -d "${HOME}/vagrant_devbox" ]; then
  alias vb="cd ${HOME}/vagrant_devbox && (vagrant ssh || (vagrant up && vagrant ssh))"
fi

alias be="bundle exec"

