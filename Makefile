DOTREPOPATH := $(shell pwd)

gather:
	cp -f ${HOME}/.bashrc $(DOTREPOPATH)/bashrc
	cp -f ${HOME}/.vimrc $(DOTREPOPATH)/vimrc
	cp -f ${HOME}/.viewrc $(DOTREPOPATH)/viewrc
	cp -f ${HOME}/.gitconfig $(DOTREPOPATH)/gitconfig
	cp -f ${HOME}/.tmux.conf $(DOTREPOPATH)/tmux.conf
	cp -f ${HOME}/.tern-project $(DOTREPOPATH)/tern-project
	cp -rf ${HOME}/.sh/* $(DOTREPOPATH)/sh/
	cp -rf $(HOME)/.psqlrc $(DOTREPOPATH)/psqlrc
	cp -rf  $(HOME)/Library/Preferences/com.googlecode.iterm2.plist $(DOTREPOPATH)/preferences/
	cp -rf $(HOME)/.alias $(DOTREPOPATH)/alias
	cp -rf $(HOME)/.zshrc $(DOTREPOPATH)/zshrc
	cp -rf $(HOME)/.conf/awesome/theme.lua $(DOTREPOPATH)/awesome.theme.lua
	cp -rf $(HOME)/.conf/awesome/rc.lua $(DOTREPOPATH)/awesome.rc.lua
	cp -rf $(HOME)/.xinitrc $(DOTREPOPATH)/xinitrc
	cp -rf $(HOME)/.jshintrc $(DOTREPOPATH)/jshintrc
	cp -rf $(HOME)/.Xauthority $(DOTREPOPATH)/Xauthority
	cp -rf $(HOME)/.viewrc $(DOTREPOPATH)/viewrc
	cp -rf $(HOME)/.mongorc.js $(DOTREPOPATH)/mongorc.js
	cp -rf $(HOME)/.conkyrc $(DOTREPOPATH)/conkyrc
	cp -rf $(HOME)/.Xresources $(DOTREPOPATH)/Xresources
	cp -rf $(HOME)/.zlogin $(DOTREPOPATH)/zlogin
	cp -rf $(HOME)/.buuger $(DOTREPOPATH)/buuger
	cp -rf $(HOME)/.buuger $(DOTREPOPATH)/buuger
	cp -rf $(HOME)/.buuger $(DOTREPOPATH)/buuger

	

plant:
