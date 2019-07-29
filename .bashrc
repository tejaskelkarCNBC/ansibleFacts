# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
alias python='/usr/bin/python2.7'
alias pip='/usr/bin/pip2'
# User specific aliases and functions
