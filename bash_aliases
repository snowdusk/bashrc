alias rm=trash

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

gitBranchPrompt() {
	local branch=`gitBranchName`
	if [ $branch ]; then
		printf "[git-%s]" $branch
	fi
}
