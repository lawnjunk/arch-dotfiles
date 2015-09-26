DOTREPOPATH := $(shell pwd)/config

gather:
	cp -f ${HOME}/.bashrc $(DOTREPOPATH)/bashrc
	cp -f ${HOME}/.vimrc $(DOTREPOPATH)/vimrc
	cp -f ${HOME}/.viewrc $(DOTREPOPATH)/viewrc
	cp -f ${HOME}/.gitconfig $(DOTREPOPATH)/gitconfig
	cp -f ${HOME}/.tmux.conf $(DOTREPOPATH)/tmux.conf
	cp -f ${HOME}/.tern-project $(DOTREPOPATH)/tern-project
	cp -rf ${HOME}/.sh/* $(DOTREPOPATH)/sh/
	cp -f $(HOME)/.psqlrc $(DOTREPOPATH)/psqlrc
	cp -f $(HOME)/.alias $(DOTREPOPATH)/alias
	cp -f $(HOME)/.zshrc $(DOTREPOPATH)/zshrc
	cp -f $(HOME)/.config/awesome/theme.lua $(DOTREPOPATH)/awesome.theme.lua
	cp -f $(HOME)/.config/awesome/rc.lua $(DOTREPOPATH)/awesome.rc.lua
	cp -f $(HOME)/.xinitrc $(DOTREPOPATH)/xinitrc
	cp -f $(HOME)/.jshintrc $(DOTREPOPATH)/jshintrc
	cp -f $(HOME)/.Xauthority $(DOTREPOPATH)/Xauthority
	cp -f $(HOME)/.viewrc $(DOTREPOPATH)/viewrc
	cp -f $(HOME)/.mongorc.js $(DOTREPOPATH)/mongorc.js
	cp -f $(HOME)/.conkyrc $(DOTREPOPATH)/conkyrc
	cp -f $(HOME)/.Xresources $(DOTREPOPATH)/Xresources
	cp -f $(HOME)/.zlogin $(DOTREPOPATH)/zlogin

plant:
