# Automatically reattach screen session
#if [ $TERM != "screen" ]; then
#		screen -q -wipe
#		if [ `screen -ls | grep "No Sockets" | wc -l | awk '{ print $1 }'` = 1 ]; then
#				screen -q
#		else
#				screen -q -raAd
#		fi
#fi

# Source global definitions 
#if [ -f /etc/bashrc ]; then 
#   . /etc/bashrc 
#fi 

# Source user definitions
if [ -f ~/.bashrc ]; then
   . ~/.bashrc
fi

