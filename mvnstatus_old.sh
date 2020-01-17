if [ "$?" -eq 0 ]; then
    git log -1 |grep "commit" > commitid.txt
    echo $commitid.txt
    else
    echo "Maven Clean Unsuccessful!"
    exit 1
fi
