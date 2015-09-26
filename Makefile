DOTREPO := $(shell pwd)/config
DOTREPOBACKUP := $(shell pwd)/backup

gather:
	cp -f ${HOME}/.bashrc $(DOTREPO)/bashrc
	cp -f ${HOME}/.vimrc $(DOTREPO)/vimrc
	cp -f ${HOME}/.viewrc $(DOTREPO)/viewrc
	cp -f ${HOME}/.gitconfig $(DOTREPO)/gitconfig
	cp -f ${HOME}/.tmux.conf $(DOTREPO)/tmux.conf
	cp -f ${HOME}/.tern-project $(DOTREPO)/tern-project
	cp -rf ${HOME}/.sh/* $(DOTREPO)/sh/
	cp -f $(HOME)/.psqlrc $(DOTREPO)/psqlrc
	cp -f $(HOME)/.alias $(DOTREPO)/alias
	cp -f $(HOME)/.zshrc $(DOTREPO)/zshrc
	cp -f $(HOME)/.config/awesome/theme.lua $(DOTREPO)/awesome.theme.lua
	cp -f $(HOME)/.config/awesome/rc.lua $(DOTREPO)/awesome.rc.lua
	cp -f $(HOME)/.xinitrc $(DOTREPO)/xinitrc
	cp -f $(HOME)/.jshintrc $(DOTREPO)/jshintrc
	cp -f $(HOME)/.Xauthority $(DOTREPO)/Xauthority
	cp -f $(HOME)/.viewrc $(DOTREPO)/viewrc
	cp -f $(HOME)/.mongorc.js $(DOTREPO)/mongorc.js
	cp -f $(HOME)/.conkyrc $(DOTREPO)/conkyrc
	cp -f $(HOME)/.Xresources $(DOTREPO)/Xresources
	cp -f $(HOME)/.zlogin $(DOTREPO)/zlogin

backup:
	rm -rf backup
	mkdir -p backup/sh
	cp -f ${HOME}/.bashrc $(DOTREPOBACKUP)/bashrc
	cp -f ${HOME}/.vimrc $(DOTREPOBACKUP)/vimrc
	cp -f ${HOME}/.viewrc $(DOTREPOBACKUP)/viewrc
	cp -f ${HOME}/.gitconfig $(DOTREPOBACKUP)/gitconfig
	cp -f ${HOME}/.tmux.conf $(DOTREPOBACKUP)/tmux.conf
	cp -f ${HOME}/.tern-project $(DOTREPOBACKUP)/tern-project
	cp -rf ${HOME}/.sh/* $(DOTREPOBACKUP)/sh/ cp -f $(HOME)/.psqlrc $(DOTREPOBACKUP)/psqlrc
	cp -f $(HOME)/.alias $(DOTREPOBACKUP)/alias
	cp -f $(HOME)/.zshrc $(DOTREPOBACKUP)/zshrc
	cp -f $(HOME)/.config/awesome/theme.lua $(DOTREPOBACKUP)/awesome.theme.lua
	cp -f $(HOME)/.config/awesome/rc.lua $(DOTREPOBACKUP)/awesome.rc.lua
	cp -f $(HOME)/.xinitrc $(DOTREPOBACKUP)/xinitrc
	cp -f $(HOME)/.jshintrc $(DOTREPOBACKUP)/jshintrc
	cp -f $(HOME)/.Xauthority $(DOTREPOBACKUP)/Xauthority
	cp -f $(HOME)/.viewrc $(DOTREPOBACKUP)/viewrc
	cp -f $(HOME)/.mongorc.js $(DOTREPOBACKUP)/mongorc.js
	cp -f $(HOME)/.conkyrc $(DOTREPOBACKUP)/conkyrc
	cp -f $(HOME)/.Xresources $(DOTREPOBACKUP)/Xresources
	cp -f $(HOME)/.zlogin $(DOTREPOBACKUP)/zlogin

plant: backup
	echo "BOOYA"

