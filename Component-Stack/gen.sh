mkdir $1
cd Base ; tar -c . | tar -C ../$1 -x
cd ../$1
find -name "*Base*.swift" -exec rename "s/Base/$1/" {} ";"
