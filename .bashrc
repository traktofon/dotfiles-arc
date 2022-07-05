# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

# Read shell aliases
if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

# Set up a nice prompt.
RESET='\e[00m'
RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'

PROMPT_DIRTRIM=3
PROMPT_COMMAND='[ $? -eq 0 ] && echo -ne "${GREEN}" || echo -ne "${RED}"'
if [ -n "$SGE_CLUSTER_NAME" ]; then
   PS1="\u@\h.${SGE_CLUSTER_NAME} \[${BLUE}\]\w$\[${RESET}\] "
else
   PS1="\u@\h \[${BLUE}\]\w$\[${RESET}\] "
fi

# Load minimal set of modules
if declare -F module >/dev/null; then
   module load gcc-libs tmux ops-tools
else
   true # ignore
fi

