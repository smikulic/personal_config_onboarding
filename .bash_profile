# refresh shell
alias reload='source ~/.bash_profile'

# open with Sublime text 2
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# grep with color
alias grep='grep --color=auto'

# git commamands simplified
alias gst='git status'
alias gba='git branch --all'
alias gad='git add -A'

# general aliases
alias ls='ls -Gp'
alias ll='ls -FGlAhp'
alias f='open -a Finder ./'                                         # f: Opens current directory in MacOS Finder
alias editHosts='sudo edit /etc/hosts'
alias memHogsTop='top -l 1 -o rsize | head -20'                     # memHogsTop:  Find memory hogs
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'  # cpuHogs:  Find CPU hogs
alias ttop="top -R -F -s 10 -o rsize"                               # ttop:  Recommended 'top' invocation to minimize resources

# Git autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[0;37m\]\A\[\e[0m\] \[\e[0;36m\]\u\[\e[0m\] @ \[\e[0;33m\]\w\[\e[0m\] \[\e[0;35m\]\$(parse_git_branch)\[\e[0m\] \\$ "
