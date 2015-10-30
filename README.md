arch linux dotfiles
===================
a repository for personal configuration files.  

## Makefile Usage

#### Retrieve copys of all tracked files
 * this command will copy any tracked files into this repository
``` sh
$ make gather
```

#### Update local dotfiles from repository 
* overwrite tracked dotfiles with dotfiles from this repo
* every time you run `$ make plant` copys of the files to be replaced will be stored in ./backup
``` sh
$ make plant
```
