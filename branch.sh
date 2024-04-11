#!bin/bash
 echo "name of the branch ?"

 read branch

 echo "Crreate $branch from current branch(c) or from Master(m)?"
 read -p "current(c) / Master(m) ?" cm

 if [ $cm == 'c' ]; then
    git checkout -b $branch
elif [ $cm == 'm' ]; then
    git checkout master && git pull origin  master && git checkout -b $branch
else
    echo " branch is :$branch"
fi