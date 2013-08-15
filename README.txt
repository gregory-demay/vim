Installation:

    git clone git://github.com/gregory-demay/vim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Install new module:

    git submodule add https://github.com/username/mymodule.git bundle/mymodule/

Remove installed module (from http://davidwalsh.name/git-remove-submodule):

    delete relevant section from .gitmodules file
    delete relevant section from .git/config file
    Run git rm --cached path/to/submodule .  Don't include a trailing slash -- that will lead to an error
    Run rm -rf .git/modules/submodule_name
    commit the change
    Delete the now untracked submodule files rm -rf path/to/submodule

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update
