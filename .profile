#
# Shell programs to remember/use/get better at
#   yes
#   iotop
#   /usr/sbin/system_profiler
#   ifconfig
#   compgen
#   du -h ./* | sort -h -r
#   lynx
#   ctrl-r
#

# ssh aliases
alias v01='ssh bddicken@v01.cs.arizona.edu'
alias v='ssh bddicken@vision.cs.arizona.edu'
alias lec='ssh bddicken@lectura.cs.arizona.edu'
alias lecx='ssh -X bddicken@lectura.cs.arizona.edu'
alias ox='ssh bddicken@oxford.cs.arizona.edu'
alias oxx='ssh -X bddicken@oxford.cs.arizona.edu'
alias ca='ssh bddicken@cambridge.cs.arizona.edu'
alias cax='ssh -X bddicken@cambridge.cs.arizona.edu'
alias sil="ssh administrator@128.196.104.132"
alias azsvn='ssh bddicken@cvs.cs.arizona.edu'
alias v='ssh bddicken@vision.cs.arizona.edu'
alias v01='ssh bddicken@v01.cs.arizona.edu'

# utility aliases
alias c='clear'
alias w='w | sort'
alias thisissparta='rm'
alias ls='ls -Gl'
alias rls='find .'
alias restart="source ~/.profile"

# directory aliases
alias cl='cd ~/Classes'
alias azw='cd /cd/projects/tau/installations/azdblab/web/apache-tomcat-7.0.30'
alias psite='cd ~/Dropbox/bd/public_html/site'

# shortcut to my todo list
alias todo='vim /Users/ibend1/Dropbox/Documents/todo.txt'
alias todoc='rm -rf /Users/ibend1/Dropbox/Documents/.*todo*'

# shortcut to budget
alias bud='open ~/Documents/Budget/Budget_2013.3.30-.xlsx'

# system stuff
BINTYPE=$ARCH.$OS

# MacPorts Installer addition on 2012-06-02_at_21:34:09: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export SVN_EDITOR=vim

# misc command overrides
alias wget="curl -O"
alias cinf="/usr/sbin/system_profiler"

# change default prompt
PS1="\h:> "

# Control color
export TERM="xterm-256color"

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# path
BINTYPE=$ARCH.$OS
PATH=.
MANPATH=$HOME/man
NNTPSERVER=news.cs.arizona.edu
PATH=$PATH:/usr/local/bin:/sbin:/usr/sbin
PATH=$PATH:/bin:/usr/bin:/usr/local/sbin:~/bin
PATH=$PATH:/home/bddicken/android-sdk-linux/tools/lib
PATH=/usr/texbin:$PATH
MANPATH=$MANPATH:/usr/man:/usr/local/man:/usr/X11/man
export PATH

#
# Use vim for man page viewing
#
export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""


#
# Tree-structured ls
#
alias lst="find . -name '*' | sed -e 's/^/|-/' -e 's/[^-][^\/]*\//|   /g' -e 's/|   \([A-Za-z0-9_.]\)/|   +--\1/'"

