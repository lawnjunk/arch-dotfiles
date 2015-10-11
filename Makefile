DOTREPO := $(shell pwd)/config
DOTREPOBACKUP := $(shell pwd)/backup

gather:
	cp -f ${HOME}/.bashrc $(DOTREPO)/bashrc
	cp -f ${HOME}/.vimrc $(DOTREPO)/vimrc
	cp -f ${HOME}/.gitconfig $(DOTREPO)/gitconfig
	cp -f ${HOME}/.tmux.conf $(DOTREPO)/tmux.conf
	cp -f ${HOME}/.tern-project $(DOTREPO)/tern-project
	cp -rf ${HOME}/.sh/* $(DOTREPO)/sh/
	cp -f $(HOME)/.alias $(DOTREPO)/alias
	cp -f $(HOME)/.zshrc $(DOTREPO)/zshrc
	cp -f $(HOME)/.config/awesome/theme.lua $(DOTREPO)/awesome.theme.lua
	cp -f $(HOME)/.config/awesome/rc.lua $(DOTREPO)/awesome.rc.lua
	cp -f $(HOME)/.xinitrc $(DOTREPO)/xinitrc
	cp -f $(HOME)/.Xauthority $(DOTREPO)/Xauthority
	cp -f $(HOME)/.conkyrc $(DOTREPO)/conkyrc
	cp -f $(HOME)/.Xresources $(DOTREPO)/Xresources

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
	cp -f $(DOTREPO)/bashrc  ${HOME}/.bashrc
	cp -f $(DOTREPO)/vimrc  ${HOME}/.vimrc
	cp -f $(DOTREPO)/gitconfig  ${HOME}/.gitconfig
	cp -f $(DOTREPO)/tmux.conf  ${HOME}/.tmux.conf
	cp -f $(DOTREPO)/tern-project  ${HOME}/.tern-project
	mkdir $(DOTREPO)/sh/
	cp -rf $(DOTREPO)/sh/  ${HOME}/.sh/*
	cp -f $(DOTREPO)/psqlrc  $(HOME)/.psqlrc
	cp -f $(DOTREPO)/alias  $(HOME)/.alias
	cp -f $(DOTREPO)/zshrc  $(HOME)/.zshrc
	cp -f $(DOTREPO)/awesome.theme.lua  $(HOME)/.config/awesome/theme.lua
	cp -f $(DOTREPO)/awesome.rc.lua  $(HOME)/.config/awesome/rc.lua
	cp -f $(DOTREPO)/xinitrc  $(HOME)/.xinitrc
	cp -f $(DOTREPO)/jshintrc  $(HOME)/.jshintrc
	cp -f $(DOTREPO)/Xauthority  $(HOME)/.Xauthority
	cp -f $(DOTREPO)/viewrc  $(HOME)/.viewrc
	cp -f $(DOTREPO)/mongorc.js  $(HOME)/.mongorc.js
	cp -f $(DOTREPO)/conkyrc  $(HOME)/.conkyrc
	cp -f $(DOTREPO)/Xresources  $(HOME)/.Xresources
	cp -f $(DOTREPO)/zlogin  $(HOME)/.zlogin

