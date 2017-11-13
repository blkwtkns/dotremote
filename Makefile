default: install-packages link-config set-shell sync-tmux

install-packages:
	sudo apt-get update
	sudo apt-get -y `cat packages.txt`

link-config:
	stow --restow `ls -d */`

set-shell:
	chsh -s `which zsh`

sync-tmux:
	$SHELL $HOME/.tmux/sync.sh
