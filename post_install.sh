#!/bin/bash

sudo apt-get install silversearcher-ag

cd $HOME/.vim/bundle/vimproc.vim
make -f make_unix.mak

cd $HOME/.vim/bundle/YouCompleteMe
$ ./install.sh --clang-completer

