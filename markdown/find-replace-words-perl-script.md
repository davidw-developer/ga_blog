---
title:  Finding and replacing words using a Perl script
url: find-replace-words-perl-script.html
post: true
...

# Finding and replacing words using a Perl script

Problem: You need to loop through a text file and replace all instances of an old word, with a new word.

You could of course open the file up, wait for the application to load, and manually find & replace.

Or, you could utilise the power of a simple Perl script.

## Perl one liner to find &amp; replace word in a file

The following "one liner" can be directly used in Terminal (in MacOS or Linux):

```
perl -pi -w -e 's/old-word/new-word/g;' /absolute/path/to/folder/file.html
```

The above example would replace all instances of "old-word" with "new-word" in "file.html".

The `/g` tells Perl to perform this operation "globally" - in other words, on the entire file.

## Multiple commands in a bash script

If you need to update multiple files, you could execute this command several times, in a shell script. 

Simply create a file that ends in the `.sh` file extension. e.g. `replace.sh` and populate it like so:

```
#!/bin/bash
perl -pi -w -e 's/old-word/new-word/g;' /absolute/path/to/folder/file.html
perl -pi -w -e 's/old-word/new-word/g;' /absolute/path/to/folder/file2.html
perl -pi -w -e 's/old-word/new-word/g;' /absolute/path/to/folder/file3.html
``` 

Originally written: 7th November 2019 
