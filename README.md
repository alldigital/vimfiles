# [alldigital](http://github.com/alldigital)'s [vim configuration](http://github.com/alldigital/vimfiles)

To install (make sure there's no ~/vim, delete if necessary):

    $ cd ~                                                                      # Welcome Home!
    $ git clone --recursive git@github.com:alldigital/vim-files.git ./.vim   	# clone recursively with vundle submodule
    $ ln -sf .vim/.vimrc ~/.vimrc                                                # we've got a new vimrc!
    $ vim +BundleInstall +qall                                                  # run installation 
    $ vim                                                                       # Let's party
    
*NOTE*: add `-g` argument to the `vim` command to use graphical UI if you like

This is a fork of [gmarik's](https://github.com/gmarik/vimfiles) vimfiles. He's a genius! Thanks gmarik!
