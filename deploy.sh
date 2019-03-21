#!/bin/bash

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


dir=$(dirname $(readlink -f $0))
echo "Linking from $dir"
cd
for f in     .bash_login \
             .bash_logout \
             .bash_profile \
             .bashrc \
             .byobu \
             .condarc \
             .config/compton.conf \
             .spacemacs.d \
             .vimrc
do
    test -f ~/"$f" && rm -f  ~/"$f"
    test -d ~/"$f" && rm -fr ~/"$f"
    test -h ~/"$f" || ln -s "$dir"/"$f" ~/"$f"
done

mkdir -p ~/.vim/spell
cd ~/.vim/spell/ && test -f it.utf-8.spl || wget http://ftp.vim.org/vim/runtime/spell/it.utf-8.spl

# Enable bash-it plugins &C
source ~/.bashrc
for x in bash-it conda defaults docker docker-compose git makefile ssh tmux
do
    bash-it enable completion $x
done
for x in git jekyll latex hub tmux
do
    bash-it enable plugin $x
done
for x in curl docker docker-compose general git systemd tmux
do
    bash-it enable alias $x
done
