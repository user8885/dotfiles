# .bash_profile -*- mode: sh -*-

# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

if [ -f ~/.profile ]; then
  source ~/.profile
fi

