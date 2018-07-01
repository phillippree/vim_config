set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader = ","

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jnurmine/Zenburn'
Plugin 'jistr/vim-nerdtree-tabs' 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'nightsense/stellarized'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-syntastic/syntastic'
Plugin 'powerline/powerline'
Plugin 'MattesGroeger/vim-bookmarks'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Enable folding
set foldmethod=indent
set foldlevel=99
set scrolloff=5
set number
set incsearch
set hlsearch
set ignorecase
set smartcase

au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

"show a visual line under cursor
set cursorline

"show matching pair
set showmatch

"enable python highlighting syntax
let python_highlight_all = 1

"Using with NerdTree
nmap <Leader>N :NERDTreeToggle<CR>
"set mouse=a

"for tabs
"enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

"Show just the filename

let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamedmod = ':t'
set t_Co=256

"For tab
set hidden

"show incomplete command
set showcmd

"Show help menu
set wildmenu

"set color to slate
color slate
set background=dark

"highlighting comments
highlight Comment ctermfg=DarkGreen
highlight String ctermfg=Green
nmap <C-_> <esc>I#<esc>

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

nmap <Leader>qq :q!<CR>
nmap <Leader>ww :w!<CR>
nmap <Leader>wq :wq<CR>

"next tab
nmap <Leader>bn :bNext<CR>
nmap <Leader>bp :bprevious<CR>
nmap <Leader>bd :bd<CR>
