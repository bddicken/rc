###
### bddicken's .profile
###

#
# Useful commands to remember:
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

### Linux 14.4 gives me an warning on startup when this is uncommented on 
#bindkey -e

#PS1="\h>"
#PS1='\w\$ '
PS1='$ '

#OS=`/bin/uname`
#ARCH=`/bin/uname -m`
BINTYPE=$ARCH.$OS

# git aliases
alias gf='git fetch'
alias gp='git pull'
alias gb='git branch'
alias gfgp='gf ; gp'
alias upps='git fetch ; git pull ; bundle exec jekyll build --incremental ; cp -r /root/dev/personal-site/_site/* /root/webserver/content/'
#alias rupps='ssh root@104.236.5.206 bash --login -c "cd dev ; cd personal-site ; source ~/.bashrc ; git fetch ; git pull ; /root/gems/bin/bundle exec jekyll build --incremental ; cp -r /root/dev/personal-site/_site/* /root/webserver/content/ ;"'
#alias rupps='ssh root@104.236.5.206 bash --login -c "source /root/.profile ; source /root/.bashrc ; cd dev ; cd personal-site ; git fetch ; git pull ; /root/gems/bin/bundle exec jekyll build --incremental ; cp -r /root/dev/personal-site/_site/* /root/webserver/content/ ;"'
alias rupps='echo "source /root/.profile ; source /root/.bashrc ; cd dev ; cd personal-site ; git fetch ; git pull ; /root/gems/bin/bundle exec jekyll build --incremental ; cp -r /root/dev/personal-site/_site/* /root/webserver/content/ ;" | ssh root@104.236.5.206'
alias upa='ssh root@104.236.5.206 "cd ./dev/attain ; git fetch ; git pull ; cp -r ./client/* ~/webserver/attain ; "'

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
alias c='cd'
alias w='w | sort'
alias thisissparta='rm'
alias vim='nvim -O'
alias nvim='nvim -O'
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
alias memc='valgrind --tool=memcheck --leak-check=full'
alias kche='kcachegrind *grind*'
alias fm='sudo sysctl -w vm.drop_caches=3'
alias hg='history 0 | grep'
alias cpur='sudo service cpufreqd restart'

# directory aliases
alias cl='cd ~/Classes'
alias azw='cd /cd/projects/tau/installations/azdblab/web/apache-tomcat-7.0.30'
alias psite='cd ~/Dropbox/bd/public_html/site'

# teaching aliases
alias 250="cd ~/dev/personal-site/courses/cs250/spring-2018"
alias 101="cd ~/dev/personal-site/courses/cs101/spring-2018"
alias 110="cd ~/dev/personal-site/courses/cs110/summer-2023"
alias 317="cd ~/dev/personal-site/courses/cs317/spring-2022"
alias 337="cd ~/dev/personal-site/courses/cs337/fall-2023"
alias 352="cd ~/dev/personal-site/courses/cs352/summer-2023"

# shortcut to my todo list
alias todo='vim ~/Dropbox/Documents/todo.txt'
alias todoc='rm -rf ~/Dropbox/Documents/.*todo*'

# system stuff
BINTYPE=$ARCH.$OS

# SVN aliases
export SVN_EDITOR=vim

# misc command overrides
#alias wget="curl -O"
alias cinf="/usr/sbin/system_profiler"

# change default prompt
#PS1="%/ <> "

#
# Control color
#
export TERM="xterm-256color"

#
# lib path
#
LD_LIBRARY_PATH=/usr/lib/python2.7/config-x86_64-linux-gnu/
export LD_LIBRARY_PATH

#
# path
#
BINTYPE=$ARCH.$OS
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/usr/bin
PATH=$PATH:/sbin
PATH=$PATH:/bin
PATH=$PATH:~/bin
PATH=$PATH:/home/bddicken/android-sdk-linux/tools/lib
PATH=$PATH:/usr/texbin
PATH=$PATH:/usr/local/bin/mongodb-linux-x86_64-2.6.7/bin/
PATH=$PATH:/opt/intel/bin
PATH=$PATH:./
PATH=$PATH:.
PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:/opt/homebrew/bin:$PATH
PATH="/opt/homebrew/opt/ruby@3.0/bin/:$PATH"
export PATH

#
# manpath
# 

#
# Java CLASSPATH
#
export CLASSPATH=/usr/share/java/junit4.jar:./

#
# history
#
export HISTCONTROL=erasedups
export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE=~/.history

setopt inc_append_history
setopt share_history

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# Vitess binaries
export PATH=~/vitess/vitess/bin:${PATH}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
