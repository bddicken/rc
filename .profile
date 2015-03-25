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

#chsh -s /bin/zsh

bindkey -e

PS1="\h>"

OS=`/bin/uname`
ARCH=`/bin/uname -m`
BINTYPE=$ARCH.$OS

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
alias vim='vim -O'
alias webserv='python -m SimpleHTTPServer 8000'
alias webservj='jekyll serve --watch'
alias rls='find .'
alias resb="source ~/.profile"
alias printers="lpstat -a"
alias mcm='make clean ; make'
alias mcmt='make clean ; make ; make test'
alias aca='ant clean ; ant'
alias macros='echo | cpp -dM -E -'
alias hosts='vim /etc/hosts'
alias fdu='du -h ./* | sort -h -r'
alias userlist='cat /etc/passwd |grep "/bin/bash" |grep "[5-9][0-9][0-9]" |cut -d: -f1'
alias vg='valgrind'
alias callg='valgrind --tool=callgrind'
alias kche='kcachegrind *grind*'
alias fm='sudo sysctl -w vm.drop_caches=3'

# dataware aliases
alias astc='ast_creator'

# directory aliases
alias cl='cd ~/Classes'
alias azw='cd /cd/projects/tau/installations/azdblab/web/apache-tomcat-7.0.30'
alias psite='cd ~/Dropbox/bd/public_html/site'

# shortcut to my todo list
alias todo='vim ~/Dropbox/Documents/todo.txt'
alias todoc='rm -rf ~/Dropbox/Documents/.*todo*'

# compilers and interpreters
#alias gcc="c99 -g -Wall"

# system stuff
BINTYPE=$ARCH.$OS

export SVN_EDITOR=vim

# misc command overrides
#alias wget="curl -O"
alias cinf="/usr/sbin/system_profiler"

# change default prompt
PS1="%/ <> "

#
# Control color
#
export TERM="xterm-256color"

#
# path
#
BINTYPE=$ARCH.$OS
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin
PATH=$PATH:/usr/local/bin:/sbin:/usr/sbin
PATH=$PATH:/bin
PATH=$PATH:/usr/bin
PATH=$PATH:~/bin
PATH=$PATH:/home/bddicken/android-sdk-linux/tools/lib
PATH=$PATH:/usr/texbin
PATH=$PATH:/usr/local/pgsql/bin
PATH=$PATH:./
PATH=$PATH:.
PATH=$PATH:/usr/local/bin/mongodb-linux-x86_64-2.6.7/bin/
export PATH

MANPATH=$HOME/man
MANPATH=$MANPATH:/usr/man:/usr/local/man:/usr/X11/man

#
# history
#
export HISTCONTROL=erasedups
export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE=~/.history

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

#
# Git stuff
#
#git config merge.tool vimdiff
#git config merge.conflictstyle diff3
#git config mergetool.prompt false

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim
#if [ -f ~/rc/.git-completion.bash ]; then
#    . ~/rc/.git-completion.bash
#fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# dataware general
export PIN_HOME="/dataware/tools/lib/pin/"
