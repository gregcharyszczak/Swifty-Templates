#!/bin/sh

# CONFIG
## path to the template folder
template_path="./Base"

## keyword to replace in every filename and inside the files. By default uses the folder name, but can be customized to something else
template_keyword="$(basename "$template_path")"

# WORKING VARIABLES
project_name="$1"
tmp_file="/tmp/$0.tmp"

if [ $# -ne 1 ]
then
	echo "Usage: $0 template_name"
	exit 1
fi

if ! [ -d "$template_path" ]
then
	echo "The path to the template is invalid. Please configure it by setting the template_path variable in the script"
	exit 2
fi

if ! [ -d "./$project_name" ]
then
	cp -r "$template_path" "./$project_name"
else
	echo "Directory ./$project_name already exists. Please choose a different project name" 
	exit 3
fi

# forces first loop
count=1
while [ $count -ne 0 ]
do
	count=0
	find "./$project_name" | grep "$template_keyword" > "$tmp_file" 
	while read -r path
	do
		count=$((count+1))

		if [ -f "$path" ]
		then
			sed -i '' -e "s/$template_keyword/$project_name/g" "$path"
		fi

		mv "$path" "$(echo "$path" | sed "s/$template_keyword/$project_name/g")" 2> /dev/null
	done < "$tmp_file"
done

rm "$tmp_file"
