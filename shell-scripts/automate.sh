#!/bin/bash

#PROJECT_DIR=/Users/david/Documents/_pandoc
#echo $PROJECT_DIR

# 1. Use AWK to get line 3 (the URL) of the markdown file
#URL_LINE_ONLY=$(awk 'NR==3' "$PROJECT_DIR"/markdown2.md)
#echo "$URL_LINE_ONLY"

# 2. Remove the words 'url: '
#URL_LINE_ONLY=${URL_LINE_ONLY##*url: }
#echo "$URL_LINE_ONLY"

# 3. Pass the URL variable into the pandoc command to make the file
#pandoc "$PROJECT_DIR"/markdown2.md -f markdown -t html -s --template="$PROJECT_DIR"/template.html -o "$PROJECT_DIR"/"$URL_LINE_ONLY"

PROJECT_DIR=/Users/david/Documents/_pandoc
MD_FILES=/Users/david/Documents/_pandoc/markdown/*.md
for file in $MD_FILES
do
	# echo line 3, which is  the 'url' yaml variable
	YAML_URL=$(awk 'NR==3' "$file")
	# remove 'url: ' from the variable
	YAML_URL=${YAML_URL##*url: }
	echo "$YAML_URL"
	# use pandoc to convert all markdown files into html, using the url specified in yaml from each file
	pandoc "$file" -f markdown -t html -s --template="$PROJECT_DIR"/layouts/template.html -o "$PROJECT_DIR"/"$YAML_URL"
done