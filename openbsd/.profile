# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
PKG_PATH=ftp://mirror.internode.on.net/pub/OpenBSD/5.7/packages/i386/

export PATH HOME TERM PKG_PATH

# alias

alias ls='colorls -GCFk'

function parse_git_branch {
	git rev-parse --abbrev-ref HEAD 2> /dev/null
}

PS1="\$(parse_git_branch)\$ "

