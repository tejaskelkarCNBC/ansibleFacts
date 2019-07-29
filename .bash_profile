# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=/home/linuxbrew/.linuxbrew/opt/python/libexec/bin:$PATH
#export $PATH
eval $(/bin/brew shellenv)
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
