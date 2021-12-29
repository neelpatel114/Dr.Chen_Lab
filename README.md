# Dr.Chen_Lab
Repository to store programs for Dr.Chen's Lab Research 

Once you have git installed follow the steps bellow to push changes:

1. git clone https://github.com/neelpatel114/Dr.Chen_Lab.git.   (this will copy the git repo to a local directory)
2. git status   (this will show the status of changes made to your local repo)
3. git add .    (this will add all changes made to be commited)
4. git commit -m "Message you want"    (this will commit your changes to the git repo with a message of what the changes are)
5. git push.     (this will push the commit to the repo and sync it to your local directory) 

Be aware to not override someone elses changes in another directory. 

Other commands:
Command	- Origin - Destination	Description
git clone REPO_URL	Personal Github	Local	Creates a local copy of a Github repo. The URL can be copied from Github.com by clicking the `Clone or Download` button.
git add README.md	Working Dir	Staging Area	Add "README.md" to staging area.
git commit	Staging Area	Local	Commits changes to files to the local repo.
git commit -a	Working Dir	Local	adds and commits all file changes to the local repo.
git pull	Personal Github	Local	Retrieve any changes from a Github repo.
git push	Local	Personal Github	Sends commited file changes to Github repo.
git merge	Other branch	Current branch	Merge any changes in the named branch with the current branch.
git checkout -b patch1	NA	NA	Create a branch called "patch1" from the current branch and switch to it.
git init	NA	NA	Initialise a directory as a Git repo.
git log	NA	NA	Display the commit history for the current repo
git status	NA	NA	See which files are staged/unstaged/changed
git diff	NA	NA	See the difference between staged uncomitted changes and the most recent commit
git stash	NA	NA	Save uncommitted changes in a temporary version and revert to the most recent commit
