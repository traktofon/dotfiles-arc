# .bash_profile

# Read the common settings.
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# Set up PATH and other environment.
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
case "$HOSTNAME" in
  unix-mgmt-*)
    PATH="/usr/local/staff:/home/regadmin/bin:$PATH"
    ;;
esac
export PATH

