set nocompatible

" Backspace past beginning of line in insert mode.
set backspace=indent,eol,start

" Allow switching buffers without saving.
set hidden

" Show cursor position and incomplete commands, always show status line.
set ruler showcmd laststatus=2

" Search incrementally with smart case sensitivity, highlight all matches.
set incsearch ignorecase smartcase hlsearch

" Automatic indentation and adjust with tab and backspace.
set autoindent smartindent smarttab

" Show line numbers, highlight current line and fixed columns.
set number cursorline colorcolumn=80,100,120

" Set window title.
set title

" Shorten messages and disable intro screen
set shortmess=atI

" Disable audible bell.
set visualbell t_vb=

" Show hard tabs and trailing whitespace
set list listchars=tab:>\ ,trail:�,nbsp:_

" Show hard tabs as 4 side, use 2 space indentation rounded to multiples.
set tabstop=4 expandtab shiftwidth=2 shiftround

" Use mac clipboard
set clipboard=unnamed

" Syntax highlighting, filetype indentation rules.
syntax on
filetype plugin indent on

" Show tab-complete suggestions and complete longest substring.
set wildmenu wildmode=list:longest

" Resize windows evenly on size cahnge
autocmd VimResized * :wincmd =

" Remove timeouts from esc
set esckeys
set timeoutlen=1000 ttimeoutlen=0

" Swap , and \ for leader.
let mapleader=" "

" Centralize swaps in one folder
set backupdir=~/.vim/backups directory=~/.vim/swaps

call plug#begin()
" Plugins
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'bufexplorer.zip'
Plug 'ervandew/ag'

" Languages
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'StanAngeloff/php.vim'
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'Glench/Vim-Jinja2-Syntax'
call plug#end()

colorscheme hybrid

" Leader commands
nmap <leader>n :nohlsearch<CR>
noremap <leader>W :w !sudo tee % > /dev/null<CR> " save a file as root (,W)
noremap <leader>nt :NERDTreeToggle<CR>
noremap <leader>be :BufExplorerHorizontalSplit<CR>

noremap <leader>ss :set spell<CR>
noremap <leader>sns :set nospell<CR>
noremap <leader>sp :set paste<CR>
noremap <leader>snp :set nopaste<CR>

autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!
nnoremap <Leader>z :Goyo<CR>

let g:bufExplorerShowRelativePath=1
autocmd BufNewFile,BufRead *.md setlocal spell

" Map Ctrl+hjkl to move around splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP>
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>
