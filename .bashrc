# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="\u \W $ "

export GREP_OPTIONS="--color=always"
export GREP_COLOR="1;35;32"

export CLICOLOR=1
export LSCOLORS=exgxcxdxcxegedabagacad

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

export HISTCONTROL=ignoreboth:erasedups

alias vi='vim'

alias ack="ack --color-lineno=magenta --color-filename=cyan --color-match=red"

alias j='jobs'
alias tz='tar zxvf'
alias ll='ls -lF'
alias la='ls -laF'
alias l='less'

alias g='git'
alias gcl='git clone'
alias gb='git branch'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias ga='git add'
alias gl='git log'
alias grm='git rm'
alias gmv='git mv'
alias gout='git checkout'
alias gpl='git pull'
alias gps='git push'
alias gsth='git stash'

alias mp='mvn package'
alias mcp='mvn clean package'

alias dstart="bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"
alias djenkins="echo \"docker run --name jenkins -d -p 49001:8080 -p 50000:50000 --link influxdb --link sonarqube -v /Users/aleksisimell/docker-jenkins/latest/jenkins:/var/jenkins_home:z jenkins/jenkins:latest\""

alias influx="docker exec -it influxdb influx"

alias efilife="docker run --rm -it eficode/efilife"

alias mvnrun='export MAVEN_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,address=8000,suspend=n";mvn hpi:run'
