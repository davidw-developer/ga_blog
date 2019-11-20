Run this command to convert files from markdown to HTML with the template.html file encasing the code:

pandoc markdown.md -f markdown -t html -s --template=template -o output.html

But now all you need to run is bash automate.sh from terminal!

Remaining challenge: 
- Looping through the posts on homepage...