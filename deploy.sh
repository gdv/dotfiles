#!/bin/bash

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


dir=$(dirname "$0")
cd
for f in     .bash_login \
             .bash_logout \
             .bash_profile \
             .bashrc \
             .byobu \
             .spacemacs.d \
             .vimrc
do
    test -e ~/"$f" && rm -fr ~/"$f"
    ln -s "$dir"/"$f" ~/"$f"
done

mkdir -p ~/.vim/spell
cd ~/.vim/spell/ && test -f it.utf-8.spl || wget http://ftp.vim.org/vim/runtime/spell/it.utf-8.spl
