.PHONY = git_add git_commit git_push
commit_var = "default_var"
branch = "master"

git_add:
	git init
	git add .
	git status
	git branch

git_commit: git_add
	git config --global user.email "iliasabrams@gmail.com"
	git config --global user.name "Abrams88"
	git commit -m " ${commit_var}"
	
git_push: git_commit	
	git push -u origin ${branch}

