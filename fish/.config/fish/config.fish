#Personal export variables
set -x PFC $HOME/Documents/Universidad/Proyecto/PFC
set -x IS_HOME $HOME/SoftwareIS
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home
set -x MAVEN_OPTS "-Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512m"
set -x CATALINA_OPTS $MAVEN_OPTS
set -x MYSQL_HOME /usr/local/mysql-5.7.15-osx10.11-x86_64
set PATH $PATH $IS_HOME/eclipse
set PATH $PATH /usr/local/apache-maven-3.3.9/bin
set PATH $PATH $MYSQL_HOME/bin
set PATH $PATH /usr/local/sbin
set PATH $PATH /usr/local/bin
#set PATH $PATH /usr/local/apache-maven-3.3.9/bin:$MYSQL_HOME/bin:/usr/local/sbin
set -x SVN_EDITOR vim
set -x MATLAB_SHELL /bin/bash
set PATH $PATH $HOME/.composer/vendor/bin

#export IS_HOME=$HOME/SoftwareIS/
#export PFC=$HOME/Documents/Universidad/Proyecto/PFC/
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home/
#export PATH=/usr/local/apache-maven-3.3.9/bin/:$PATH
#export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512m"
#export CATALINA_OPTS=$MAVEN_OPTS
#export PATH=$IS_HOME/eclipse:/$PATH
#export MYSQL_HOME=/usr/local/mysql-5.7.15-osx10.11-x86_64/
#export PATH=$MYSQL_HOME/bin/:$PATH
#export SVN_EDITOR=vi

# Exit Terminal Application when exit command is entered
#function exit {
#    osascript -e 'tell application "Terminal" to if not ((count windows) > 1) then quit'
#}

#export PATH=/usr/local/sbin:$PATH

#if [ -d "$HOME/Library/Python/2.7/bin" ]; then
#    PATH="$HOME/Library/Python/2.7/bin:$PATH";
#fi

function fish_greeting
echo "
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'''@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'''@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@''''''''@@@@''''@@@'''@@@@''''@@@@''''@@@@@@@@''''''''@@@@@@@@@@@'''@@@@@@@@@@
@@@@@@@@@@@@@@@@@@''''''''@@@@@@@''''@@''''''@@@'''@@@''''@@@@@@@'''''''''@@''''@@@@''''@@@@@@@@@@@@
@@@@@@@@@@@@@@@@'''''@@@@@@@@@@@@'''@@@''''''@@@'''@@@''''@@@@@'''''@@@@@@@''''@@'''''@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@''''''@@@@@@@@@@''''@@''''''''@''''@@@'''@@@@@'''@@@@@@@@@'''''''''@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@'''''''''''@@@''''@@@''''@'''''''@@@''''@@@''''@@@@@@@@@@''''''@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@'''''@'''@@@@''''@@''''''@@''''@@@''''@@@@@@@@@@@''''''@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@''''@''''@@@@'''@@@'''''@@@'''@@@''''@@@@@@@@@@@@'''''''''@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@'''''@@@'''@@@@''''@@@'''''@@''''@@@'''@@@@@@@@@@@@'''@@@'''''@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@''''@@@@@'''@@@@@'''@@@@@@''@@''''@@@''''@@@@@@@@@@@''''@@@@@'''''@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@''''@@@@@@@@@'''@@@@@'''@@@@@@@@@@'''@@@@@''''''''''@@@@@'''@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@'''@@@@@@@@@@@@@@''@@@@@@''@@@@@@@@@@@'''@@@@@@@@''@@@@@@@@@@''@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'@@@@@@@@@@@@@'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

alias ll='ls -alF'
alias la='ls -lA'
alias l='ls -CF'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias gs='git status'
alias gc='git commit --verbose'
alias gco='git checkout'
alias gd='git diff'
alias ga='git add'
alias gi='git init'
alias gcl='git clone'
alias push='git push'
alias pull='git pull'
alias gf='git fetch'
alias gdb='git branch -D'
alias gcp='git cherry-pick'
alias gb='git branch'
alias gba='git branch -a'
alias gdt='git difftool'
alias gt='git tag'
alias gdt='git tag -D'
