Installation:

    git clone git://github.com/gregory-demay/vim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Install new module:
    git submodule add https://github.com/username/mymodule.git bundle/mymodule/

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update
