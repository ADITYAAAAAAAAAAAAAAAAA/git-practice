#!/bin/bash

# -------------------------
# Aim 1: Clone, Create, Commit, and Push to Remote
# -------------------------

# Clone the remote Git repository to your local machine
git clone https://github.com/your-username/repository-name.git

# Change into the project directory
cd repository-name

# Create a new branch named feature-branch and switch to it
git checkout -b feature-branch

# Create a new file and add some content to it
echo "Sample content" > newfile.txt

# Stage the new file for commit
git add newfile.txt

# Commit the changes with a message
git commit -m "Add newfile.txt with initial content"

# Push the branch to the remote repository
git push origin feature-branch


# -------------------------
# Aim 2: Create and Merge Branches
# -------------------------

# Clone the repository again (for a clean start)
git clone https://github.com/your-username/repository-name.git
cd repository-name

# Create and switch to a new branch named my-feature
git checkout -b my-feature

# Make a change to README.md
echo "New line" >> README.md

# Stage and commit the change
git add README.md
git commit -m "Update README.md with a new line"

# Switch back to the main branch
git checkout main

# Merge the changes from my-feature into main
git merge my-feature


# -------------------------
# Aim 3: Revert a Commit
# -------------------------

# Clone the repository again
git clone https://github.com/your-username/repository-name.git
cd repository-name

# Make three different commits
echo "1" >> file.txt; git add .; git commit -m "First"
echo "2" >> file.txt; git add .; git commit -m "Second"
echo "3" >> file.txt; git add .; git commit -m "Third"

# Show commit history to identify commit to revert
git log

# Use 'git revert' to undo a specific commit (replace <commit-hash>)
# git revert <commit-hash>


# -------------------------
# Aim 4: Modify a Commit Message
# -------------------------

# Clone and make an initial commit
git clone https://github.com/your-username/repository-name.git
cd repository-name
echo "Initial content" > file.txt
git add file.txt
git commit -m "Initial mesage"

# Amend the commit message
git commit --amend -m "Corrected initial message"

# Check commit history
git log


# -------------------------
# Aim 5: Stash, Apply, and Pop Changes
# -------------------------

# Clone the repository and make an uncommitted change
git clone https://github.com/your-username/repository-name.git
cd repository-name
echo "Uncommitted change" >> file.txt

# Stash the current changes
git stash

# Switch to another branch temporarily
git checkout -b another-branch

# Return to the original branch (main)
git checkout main

# Reapply the stashed changes
git stash pop

# Stage and commit the reapplied changes
git add file.txt
git commit -m "Apply stashed changes"


# -------------------------
# Aim 6: Resolve Merge Conflicts
# -------------------------

# Clone the repository and create two branches
git clone https://github.com/your-username/repository-name.git
cd repository-name
git checkout -b branch-1

# Make changes on branch-1
echo "Content from branch-1" > file.txt
git add file.txt
git commit -m "Edit on branch-1"

# Create and switch to branch-2 from main
git checkout -b branch-2 main

# Make conflicting changes on branch-2
echo "Content from branch-2" > file.txt
git add file.txt
git commit -m "Edit on branch-2"

# Merge branch-2 into branch-1 to cause conflict
git checkout branch-1
git merge branch-2

# After resolving conflict manually, stage the file
git add file.txt

# Commit the merged result
git commit -m "Resolve merge conflict between branch-1 and branch-2"


# -------------------------
# Aim 7: Work with Git Submodules
# -------------------------

# Clone the repository with submodules
git clone --recurse-submodules https://github.com/your-username/repo-with-submodules.git
cd repo-with-submodules

# Initialize and update submodules (if needed)
git submodule init
git submodule update

# Navigate into the submodule directory
cd submodule-directory

# Make changes inside the submodule
echo "Submodule change" >> subfile.txt
git add subfile.txt
git commit -m "Change in submodule"

# Go back to the main repo and commit the submodule reference update
cd ..
git add submodule-directory
git commit -m "Update submodule to latest commit"


# -------------------------
# Aim 8: Cherry-pick a Commit
# -------------------------

# Clone the repository and create a new branch
git clone https://github.com/your-username/repository-name.git
cd repository-name
git checkout -b feature-branch

# Make a commit in the feature branch
echo "Feature commit" >> file.txt
git add file.txt
git commit -m "Feature commit to cherry-pick"

# Show commit history and identify commit hash
# git log

# Switch to main and cherry-pick a commit from the feature branch
# Replace <commit-hash> with actual commit ID
# git cherry-pick <commit-hash>
