
all: clean
	mkdir config/
	tar -xvf colors.tar.gz 
	mv colors config/.colors 
	tar -xvf vim.tar.gz 
	mv vim config/.vim
	tar -xvf terminal.tar.gz 
	mv terminal config/.terminal
	cp bashrc config/.bashrc
	cp tmux.conf config/.tmux.conf
	cp vimrc config/.vimrc
	cp ../bash_aliases config/.bash_aliases

install:
	cp -r config/* ~/.


.PHONY: clean
clean:
	rm -rf config
