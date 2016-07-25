source ~/.vim-theme
set nocompatible
syntax enable
colorscheme solarized
set laststatus=2
let g:airline_powerline_fonts = 1
" For Python 3
let g:powerline_pycmd = "py3"

" Tab settings
set tabstop=4
set softtabstop=4
set expandtab

" Set line numbering and relative numbering mode
 set number
 set relativenumber

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Show only selected in Visual Mode
nmap <silent> <leader>th :cal ToggleSelected(0)<cr>
vmap <silent> <leader>th :cal ToggleSelected(1)<cr>

" Split the window using some nice shortcuts
nmap <leader>s<bar> :vsplit<cr>
nmap <leader>s- :split<cr>
nmap <leader>s? :map <leader>s<cr>

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Set 7 lines to the cursor - when moving vertically using j/k
set so=7
"
" " Turn on the WiLd menu
set wildmenu
"
" " Ignore compiled files
set wildignore=*.o,*~,*.pyc
"
" "Always show current position
set ruler
"

" open help in vertical split
au BufWinEnter {*.txt} if 'help' == &ft | wincmd H | nmap q :q<CR> | endif


" Scripts and Plugins " {{{
filetype off
runtime macros/matchit.vim
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle

Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
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

" Indenting options
" Disable comment auto-indenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" enable auto indent
filetype plugin indent on      " Automatically detect file types.
" Keyboard binding for on the fly indent switching
nnoremap <F8> :setl noai nocin nosi inde=<CR>

