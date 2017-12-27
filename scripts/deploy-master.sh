#!/bin/sh
# ideas used from https://gist.github.com/motemen/8595451

# abort the script if there is a non-zero error
set -e

# show where we are on the machine
pwd

remote=$(git config remote.origin.url)

siteSource="$1"

if [ ! -d "$siteSource" ]
then
    echo "Usage: $0 <site source dir>"
    exit 1
fi

# make a directory to put the gp-pages branch
mkdir master-branch
cd master-branch
# now lets setup a new repo so we can update the master branch
git config --global user.email "$GH_EMAIL" > /dev/null 2>&1
git config --global user.name "$GH_NAME" > /dev/null 2>&1
git init
git remote add --fetch origin "$remote"

# switch into the the master branch
if git rev-parse --verify origin/master > /dev/null 2>&1
then
    git checkout master
    # delete any old site as we are going to replace it
    # Note: this explodes if there aren't any, so moving it here for now
    git rm -rf .
else
    git checkout --orphan master
fi

# copy over or recompile the new site
cp -a ${siteSource}/* .

# stage any changes and new files
git add -A
# now commit, ignoring branch master doesn't seem to work, so trying skip
git commit --allow-empty -m "Deploy to GitHub pages [ci skip]"
# and push, but send any output to /dev/null to hide anything sensitive
git push --force --quiet origin master > /dev/null 2>&1

# go back to where we started and remove the master git repo we made and used
# for deployment
cd ..
rm -rf master-branch

echo "Finished Deployment!"\\
