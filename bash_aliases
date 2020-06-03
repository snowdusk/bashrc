alias rm=trash
alias cd=cdls

trash() {
	echo -e "Move all to ~/.Trash"
	mv $@ ~/.Trash/
}

tlist() {
	ls -al ~/.Trash
}

tcount() {
	ls -lR ~/.Trash | grep '^-' | wc -l
}

gitBranchName() {
	git symbolic-ref HEAD 2>/dev/null | cut -d/ -f3
}

gitStatus() {
	git status |head -n2 | tail -n1 | cut -d' ' -f1
}

gitBranchPrompt() {
	local branch=`gitBranchName`
	if [ $branch ]
	then
		local status=`gitStatus`
		if [ "$status" = "nothing" ]
		then
			printf "[%s][✓]" $branch
		else
			printf "[%s][✗]" $branch
		fi
	fi
}

cdls() {
	\cd $1
	ls -F --color=auto
}
