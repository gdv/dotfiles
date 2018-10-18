#!/bin/bash

test -e ~/.emacs.d && rm -fr ~/.emacs.d
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
test -e ~/.bash_it && rm -fr ~/.bash_it
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

dir=$(dirname "$0")
for f in      .bash_login \
             .bash_logout \
             .bash_profile \
             .bashrc \
             .spacemacs.d
do
    test -e ~/"$f" && rm -fr ~/"$f"
    ln -s "$dir"/"$f" ~/"$f"
done
