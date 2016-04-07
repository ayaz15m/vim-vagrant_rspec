vim-vagrant_rspec
===========

A vim plugin for running rspec tests in vagrant from vim

Installation
------------

### Vundle

Install [Vundle](https://github.com/gmarik/vundle#quick-start).

Add the Bundle to your .vimrc:

    Plugin 'ayaz15m/vim-vagrant_rspec'

Then run the `BundleInstall` in vim:

    :BundleInstall

### Pathogen

For [Pathogen](https://github.com/tpope/vim-pathogen) users, you can just clone the repo, manually.

    git clone https://github.com/ayaz15m/vim-vagrant_rspec.git ~/.vim/bundle/vim-vagrant_rspec

Example Mappings
------------
***Note: Tests will only run from spec file***

Run Rspec on line:

    autocmd FileType ruby map <buffer> <leader>r :call vagrant_rspec#Rspecline()<cr>

Run Rspec on file:

    autocmd FileType ruby map <buffer> <leader>R :call vagrant_rspec#Rspecfile()<cr>

Run Rspec on project:

    autocmd FileType ruby map <buffer> <leader>e :call vagrant_rspec#Rspecall()<cr>
