# .bashrc
__prompt_command() {
     local exit_code="$?"
     local pink='\033[38;5;213m'
     local rst='\033[0m'
 
     if [ $exit_code != 0 ]; then
         PS1="${pink}\u:\W\$${rst} "
     else
         PS1="\u:\W\$ "
     fi
}
 
PROMPT_COMMAND=__prompt_command
set -o vi
bind -s 'set completion-ignore-case on'
