mkdir $1
cd Base ; tar -c . | tar -C ../$1 -x
cd ../$1
find . -type f -name 'Base*' | while read FILE ; do
    newfile="$(echo ${FILE} |sed -e 's/\Base/${1}/')" ;
    mv "${FILE}" "${newfile}" ;
done
