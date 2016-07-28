source ~/.vim-theme
set nocompatible
syntax enable
colorscheme solarized

" Generic options
set history=1000    " History size
set laststatus=2    " Always show status line
" Set to auto read when a file is changed from the outside
set autoread
set autowrite       " Automatically save before commands like :next and :make
set incsearch       " Incremental search
set pastetoggle=<F2>
set printoptions=paper:letter
set showmatch       " Show matching brackets.
set showcmd         " Show (partial) command in status line.
set smartcase       " Case insensitive searches become sensitive with capitals
set smarttab        " sw at the start of the line, sts everywhere else
set visualbell
setglobal tags=./tags;
set wildmenu
set wildmode=longest:full,full
set wildignore+=tags,.*.un~,*.o,*~,*.pyc
set hidden          " Allow hidden buffers

set updatetime=250  " Update time = 250 ms

" Tab settings
set tabstop=4
set softtabstop=4
set expandtab

" Set line numbering and relative numbering mode
 set number
 set relativenumber

" Dictionaries to use for completeion
set dictionary+=/usr/share/dict/words

set scrolloff=7     " Set 7 lines to the cursor - when moving vertically using j/k 
set ruler           " Always show current position

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Airline settings
let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" For Python 3
" let g:powerline_pycmd = "py3"
" When pushing j/k on a line that is wrapped, it navigates to the same line,
" just to the expected location rather than to the next line
nnoremap j gj
nnoremap k gk

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

" make . work with visually selected lines
vnoremap . :norm.<CR>

" Clipboard behavior
set clipboard=unnamedplus
" set paste
" set go+=a               " Visual selection automatically copied to the clipboard

" Clipboard keys
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" open help in vertical split
au BufWinEnter {*.txt} if 'help' == &ft | wincmd H | nmap q :q<CR> | endif


" Scripts and Plugins " {{{
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle

Plugin 'scrooloose/syntastic.git'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'easymotion/vim-easymotion'

" Git related stuff
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive.git'

Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-vinegar.git'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'FuzzyFinder'
Plugin 'L9'
Plugin 'matchit.zip'
Plugin 'KevinGoodsell/vim-csexact'
Plugin 'ConradIrwin/vim-bracketed-paste'

" Snippet Management
Plugin 'SirVer/ultisnips'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Snippents:
Plugin 'honza/vim-snippets'

" End of plugins
" All of your Plugins must be added before the following line
call vundle#end()            " required

" enable auto indent
filetype plugin indent on      " Automatically detect file types.

