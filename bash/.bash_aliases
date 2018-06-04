# Some aliases
# TODO: move to .bash_aliases
alias setclip="xclip -selection c"
alias getclip="xclip -selection clipboard -o"
alias be="bundle exec"
alias dce="docker-compose exec -e COLUMNS=$(tput cols) -e LINES=$(tput lines) web"
alias dcu="docker-compose up --build -d"
alias dcl="docker-compose logs -f"
alias dcps="docker-compose ps"
alias dcpu="docker-compose pull && docker-compose up -d"

