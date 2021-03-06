# ignore duplicates
export HISTCONTROL=ignoreboth:erasedups

# unlimited bash history
export HISTFILESIZE=1000000			
export HISTSIZE=1000000

alias up="cd .."
alias healthcheck="C:/Dev/NgCC.exe -s C:/git/Xero/project/Xero.sln"
alias subl="subl.exe $*"
alias msbuild="MSBuild.exe $*"
alias vs="devenv.exe -edit $*"
alias status="git status"
alias s="git status"
alias diff="git diff"
alias d="git diff"
alias checkout="git checkout"
alias ch="git checkout"
alias cf="git checkout --"
alias chb="git checkout -b"
alias cm="git commit"
alias commit="git commit"
alias a="git add"
alias au="git add -u"
alias aa="git add -A"
alias ai="git add --interactive"
alias patch="git add --patch"
alias log="git log"
alias branch="git branch"
alias br="git branch"
alias push="git push"
alias ps="git push"
alias pull="git pull"
alias pl="git pull"
alias stash="git stash"
alias pop="git stash pop"
alias back="git checkout -"
alias reset="git reset"
alias pk="git cherry-pick"
alias pick="git cherry-pick"
alias plum="git pull upstream master"
alias mst="git checkout master && git pull upstream master"
alias pso="git push origin"
alias psob="git push origin \"$(git rev-parse --abbrev-ref HEAD)\"" #push origin this branch
alias clean="git clean"
alias rebase="git rebase"
alias amend="git amend"
alias fetch="git fetch"
alias backup="git checkout -b \"$(git rev-parse --abbrev-ref HEAD)+bak\" && git checkout -" #create a branch called "current"+bak
alias rmbackup="git branch -D \"$(git rev-parse --abbrev-ref HEAD)+bak\"" #delete a branch called "current"+bak

#vs() { devenv -edit $* & }

# non-printable characters must be enclosed inside \[ and \]
PS1='\[\033[1;32m\]'     		# set colour to green
PS1="$PS1"'\w'                 	# current working directory

if test -z "$WINELOADERNOEXEC"
then
	PS1="$PS1"'\[\033[1;34m\]' 	# set colour to blue
    PS1="$PS1"'$(__git_ps1)'   	# bash function
fi

PS1="$PS1"'\n'                 	# new line
PS1="$PS1"'\[\033[1;33m\]'     	# set colour to yellow
PS1="$PS1"'λ: '                 # space
PS1="$PS1"'\[\033[0m\]'        	# change color

# operate bash in vi mode
#set -o vi