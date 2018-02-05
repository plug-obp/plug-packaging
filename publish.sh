

dependencies=`cat $1 | xargs`

for dep in $dependencies; do
    current="../$dep"
    echo $current
    if [ -d $current ]
    then
        echo "----- Publishing $dep -----"
        cd $current
        ./gradlew publish
        cd -
    else
        echo "----- Can't publish $dep -----"
    fi
done
