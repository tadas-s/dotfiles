alias setclip="xclip -selection c"
alias getclip="xclip -selection clipboard -o"
alias be="bundle exec"
alias dce='docker-compose exec -e COLUMNS=$(tput cols) -e LINES=$(tput lines) app'
alias dcr='docker-compose run --rm -e COLUMNS=$(tput cols) -e LINES=$(tput lines) app'
alias qdcr='docker-compose run --rm --no-deps -e COLUMNS=$(tput cols) -e LINES=$(tput lines) app'
alias dcu="docker-compose up --build -d"
alias qdcu="docker-compose up --no-deps --build -d"
alias dcl="docker-compose logs -f"
alias dcps="docker-compose ps"
alias dcpu="docker-compose pull && docker-compose up -d"
alias b="docker-compose build --parallel"
