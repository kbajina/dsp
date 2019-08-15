### Common Basic Commands
These are commands you'll use over and over, so bookmark this as a reference.  You probably know many of them, but some may be new.

#### Filesystem Navigation
##### `cd`
"Change Directory", switches you to the directory you specify.
```
# Syntax: cd <directory_to_go_to>
$ cd ~
```

What does this do?

##### `pwd`
"Print (or Present) Working Directory", checks the directory that you're currently in and prints it out for you.  All commands run from the directory that you're in.
```
# Syntax: pwd
$ pwd
/Users/paulburkard
```

##### `ls`
Lists the files/directories in your present working directory, or whatever directory you explicitly specify.  
```
# Syntax: ls <path_to_file/directory>
$ ls ~
Applications		Metis Google Drive	Public
Desktop			Movies			git
Documents		Music			scikit_learn_data
Downloads		OneDrive
Library			Pictures
$ ls /bin/
[		df		launchctl	pwd		tcsh
bash		domainname	link		rcp		test
cat		echo		ln		rm		unlink
chmod		ed		ls		rmdir		wait4path
cp		expr		mkdir		sh		zsh
csh		hostname	mv		sleep
date		kill		pax		stty
dd		ksh		ps		sync
```

**Useful `ls` options**:
* `-l`: displays more detailed information about the various files
* `-a`: include hidden files starting with a "."
* `-h`: human readable file sizes like MB or GB (rather than just in huge #s of bytes)

#### Viewing Files

##### `cat`
"Concatenate", prints the contents of the file to standard output (the console by default).

```
# Syntax: cat <filename>
$ echo 'Hello World' > hello.txt
$ cat hello.txt
```

##### `less`
Allow scrolling through files, much better for large files so they don't have to be all dumped to the console (RAM issues) like in `cat`.

```
# Syntax: less <filename>
$ cd ~/git/Metis/Bootcamps/sf16_ds4
$ less README.md
```

**Useful Things:**
* The space bar pages down in the file .
* The arrow keys scroll up/down line by line.
* Hit `q` to exit out of `less` and return to the command prompt.
* `less` can do a lot more!  Take a look [here](http://linux.about.com/od/commands/fl/The-Linux-Top-Command.htm) to see how `less` can help you with searching large files and more.

##### `head`
View the beginning of a file.

```
# Syntax: head <filename>
$ cd ~/git/Metis/Bootcamps/sf16_ds4
$ head README.md
```

**Useful Options:**
* `-n`: The number of lines

##### `tail`
View the end of a file.

```
# Syntax: tail <filename>
$ tail README.md
```

**Useful Options:**
* `-n`: The number of lines
* `-f`: Allow it to keep printing out if new lines are added (useful in logging for instance)

#### Moving Files Around

##### `cp`
"Copy", copy file(s) or directory(ies) from one location to another.

```
# Syntax: cp <from_file> <to_location>
$ cp README.md ~
```

**Useful Options:**
* `-R`: recursive, allows you to copy directories

##### `mv`
"Move" file(s) or directory(ies) from one place to another.

```
# Syntax: mv <from_loc> <to_loc>
mv ~/README.md ..
```

##### `mkdir`
"Make Directory" creates a directory.

```
# Syntax: mkdir <dirname>
$ cd ~
$ mkdir testdir
$ ls -lh
```

##### `rm`
"Remove" file(s)

```
# Syntax: rm <file_name>
$ rm -rf testdir
$ ls -lh
```

**Useful Options:**:
* `-r`: recursive, for directories
* `-f`: force it, aka don't ask if you're sure

#### Examining Disk Space
##### `df`
"Disk Free", Check out the total disk space used/available.

```
# Syntax: df
$ df -h
```

**Useful Options:**
* `-h`: human readable sizes like MB, GB

##### `du`
"Disk Usage", Check out the disk space used by a file or directory.

```
# Syntax: du <directory>
$ du -h -d 1 ~
```

**Useful Options:**
* `-h`: human readable file sizes
* `d`: depth to traverse within a directory

#### Others

##### `find`
Search for files in the filesystem.

```
# Syntax: find <path_to_search> <expression_to_look_for>
$ find ~ git
```

**TIP:** There are a done of things you can do with `find`, check out your manual.

**WARNING:** `find` seems to change a lot between shells and Unix distributions, so use the docs.

##### `grep`
Search text for lines matching a specific pattern.

```
# Syntax: grep <expression_to_look_for> <file>
$ grep data README.md
```

##### `wc`
"Word Count", does exactly what it sounds like.

```
# Syntax: wc <file>
$ wc -l README.md
```

**Useful Options:**
* `-l`: Count lines instead

##### `sort`
You guessed it.

```
# Syntax: sort <input_to_sort>
$ du -h -d 1 ~ | sort
```

##### `who`
Displays the active user(s).

```
# Syntax: who
$ who
```

##### `which`
Find the location of a binary file aka command that you are trying to run.

```
# Syntax: which <program_to_examine>
$ which python
```

##### `gzip`
Zip (compress) files in the gzip format.

```
# Syntax: gzip <file(s)>
$ gzip testdir
```

##### `gunzip`
Unzip gzipped files.

```
# Syntax: gunzip <file>
$ gunzip test.gz
```

##### `tar`
Tar or untar (archive or unarchive) a batch of files.


##### `zcat`
Peak into gzipped files without unzipping them.

##### `echo`
Print a string to standard output (console by default).

```
# Syntax: echo <string>
$ echo 'Hello World'
```
