---
title:  Simple guide to copying folders using rsync
url: rsync-folder-cloning-guide.html
post: true
excerpt: "Let's say you have lots of identical files on your computer, and you need to make a change to one of the files. You normally might have to spend a long time opening up each file and copying your changes."
date:   2019-09-17 20:45:45
...

# A simple way to bulk clone folders using rsync

Let's say you have lots of identical files on your computer, and you need to make a change to one of the files. You normally might have to spend a long time opening up each file and copying your changes.

Rsync is a handy little utility tool which can help you sync and copy the contents of a folder into another folder in one easy command.

Initially released back in 1996, You can usually find pre-installed on Mac and Linux. 

To double check it's installed, just open your Terminal app and type:
```
rsync -v
```

Rsync commands use the following easy to remember structure:
```
rsync -[OPTIONS] [SOURCE FILE PATH] [DESTINATION PATH]
```

## Some available Options
-   `-r` : means recursive - you recurse the command into directories.
- `-a` : archive - useful for backups - preserves file information (such as time stamps and permissions ect).

## Basic example: Terminal one liner

You can copy one folder into another by opening your Terminal App and writing:
```
rsync -r /path/to/src_folder /path/to/dest_folder
```

Note that the above example would would copy the folder `src_folder` *INTO* the folder `dest_folder`, so you'd end up with a folder structure like this: `dest_folder/src_folder`.

## Copy only the contents of a folder: Terminal one liner

In order to copy the *contents* of `src_folder` into `dest_folder`, you need to add a forward slash onto the end of your `src_folder` path (but not onto the `dest_folder`):
```
rsync -r /path/to/src_folder/ /path/to/dest_folder
```

## How to run multiple rsync commands inside a shell script

Let's say you have multiple rsync commands you want to run, but don't want to keep copying and pasting them into the terminal every time.

You can create a shell script with multiple commands.

Open a code editor and enter the following:

```
#!/bin/bash

rsync -r /path/to/src_folder1/ /path/to/dest_folder1
rsync -r /path/to/src_folder2/ /path/to/dest_folder2
rsync -r /path/to/src_folder3/ /path/to/dest_folder3
```

Obviously the paths would be changed to meet your requirements.

The line at the top `#!/bin/bash` is known as the shebang line.

Save the file with the `.sh` extension. 

In order to run the shell script, you can usually just open up Terminal and type `sh` (space) followed by the shell script path. You can do this by dragging and dropping the shell script into the terminal and it will auto populate the path.

Example: 
```
sh /path/to/file.sh
```

If you run into errors, check the file is executable by running the following command in terminal:
```
chmod +x /path/to/shellscript.sh
```

This article gives only a very basic overview of rsync, however much more advanced capabilities are also available.

Originally written: 17th September 2019