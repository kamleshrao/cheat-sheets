# Git Cheat Sheet

Git is the open source distributed version control system that facilitates GitHub activities on your laptop or desktop. This cheat sheet summarizes commonly used Git command line instructions for quick reference (Source: https://training.github.com/downloads/github-git-cheat-sheet.pdf).  

These commands will work with any Tools/Products which is based on Git (E.g. GitHub, GitLab, BitBucket)

## Installation
### GitHub for Windows
https://windows.github.com
### GitHub for Linux/Ubuntu
`sudo apt install git`
### GitHub for Mac
https://mac.github.com
### Git for All Platforms
http://git-scm.com

## First Time Configuration of Git
Use the below commands from command line (Windows/Unix/Max) to configure User Information. This will be a one-time activity on every new laptop: 
### Sets the name you want attached to your commit transactions 
`git config --global user.name "[name]"`
### Sets the email you want attached to your commit transactions 
`git config --global user.email "[email address]"`
### Enables helpful colorization of command line output 
`git config --global color.ui auto`

### Example of above commands
```
git config --global user.name "John Smith"
git config --global user.email "john.smith@gmail.com"
git config --global color.ui auto
```

### To view the current values of a property, use the command without assigning property value
```
git config --global user.name
git config --global user.email
git config --global color.ui
```

## SSL Setup for Git
### Steps to follow, if you are using GitHub
- Open Git Bash and type following command
```
ssh-keygen -t ed25519 -C "your_email@example.com"
```
- Press enter keys for all questions. This will select the default options, without password.
- Add SSH Key to GitHub Account.
- Open the `id_ed25519.pub` file from `.ssh` folder in a text edit.  Copy its contents.
- Login to GitHub. Goto Settings -> SSG and GPG Keys
- Add New SSH Key.  Give name of Laptop to easily remember.
- Test the SSH 
```
ssh -T git@github.com
```
- Type "yes" for the above question
- Try git clone SSH-RepositoryLink

Source: https://kinsta.com/blog/generate-ssh-key/


### Steps to follow, if you are using BitBucket
- TBD ############################################


## Creating Repositories 
When starting out with a new repository, you only need to do it once; either locally, then push to GitHub, or by cloning an existing repository
### Turn an existing directory into a git repository
`git init`
### Clone (download) a repository that already exists on GitHub, including all of the files, branches, and commits. 
`git clone [url]`

NOTE - If using SSL url, please complete the SSL first.

## The .gitignore File 
Sometimes it may be a good idea to exclude files from being tracked with Git. This is typically done in a special file named `.gitignore` . You can find helpful templates for `.gitignore` files at https://github.com/github/gitignore

## Syncronize Changes between local and remote respository
Synchronize your local repository with the remote repository on GitHub.com
### Downloads all history from the remote tracking branches
`git fetch`
### Combines remote tracking branch into current local branch
`git merge`
### Uploads all local branch commits to GitHub
`git push`
### Updates your current local working branch with all new commits from the corresponding remote branch on GitHub. `git pull` is a combination of `git fetch` and `git merge`
`git pull`

## Branches 
Branches are an important part of working with Git. Any commits you make will be made on the branch you're currently “checked out” to. Use `git status` to see which branch that is.
### Creates a new branch
`git branch [branch-name]`
### Switches to the specified branch and updates the working directory
`git checkout [branch-name]`
### Combines the specified branch’s history into the current branch. This is usually done in pull requests, but is an important Git operation.
`git merge [branch]`
### Deletes the specified branch
`git branch -d [branch-name]`

