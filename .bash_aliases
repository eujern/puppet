function clear_iptables() {
    sudo iptables -F
    sudo iptables -X
    sudo iptables -t nat -F
    sudo iptables -t nat -X
    sudo iptables -t mangle -F
    sudo iptables -t mangle -X
    sudo iptables -P INPUT ACCEPT
    sudo iptables -P FORWARD ACCEPT
    sudo iptables -P OUTPUT ACCEPT
}

function forward_port() {
    sudo iptables -t nat -A PREROUTING -p tcp --dport $1 -j REDIRECT --to-ports $2 -d 127.0.0.1
    sudo iptables -t nat -A OUTPUT -p tcp --dport $1 -j REDIRECT --to-ports $2 -d 127.0.0.1
}

# prepends '"' and appends '",' to each line in the given file
function quotecomma() {
    awk '{print "\x27"$0"\x27," }' $1
}

alias s='git status -s'
alias d='git diff'
alias b='git branch'
alias l="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias p='git log origin/master.. --stat'
alias gspp='git stash; git pull; git stash pop'
alias gsl='git stash list'

alias mci='mvn clean install'

alias ffile='find . | grep '
