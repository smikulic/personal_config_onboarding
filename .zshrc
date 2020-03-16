########################
# Sinisa's Custom Config
########################

# Open Visual Studio Code
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

# refresh shell
alias reload='source ~/.zshrc'

# # open with Sublime text 2
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'


# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# # grep with color
# alias grep='grep --color=auto'

# # git commands simplified
alias ll='ls -lhaG'
