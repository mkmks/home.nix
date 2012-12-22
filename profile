# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/local/bin" ] ; then
    PATH="$HOME/local/bin:$PATH"
fi

# add cabal to PATH
if [ -d "$HOME/.cabal/bin" ] ; then
    PATH="$HOME/.cabal/bin:$PATH"
fi

# add ruby gems to PATH
if [ -d "/var/lib/gems/1.8/bin" ] ; then
    PATH="/var/lib/gems/1.8/bin:$PATH"
fi

if [ -d "$HOME/local/lib" ] ; then
    LD_LIBRARY_PATH="$HOME/local/lib:$LD_LIBRARY_PATH"
fi

export STARDICT_DATA_DIR="$HOME/dicts"
