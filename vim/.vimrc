"------------------------------------------------------------------------------
" General Settingss
"------------------------------------------------------------------------------
set nocompatible
set modelines=0
set hidden
set termguicolors
set undofile
set viminfo='20,\"50
set history=50
set ignorecase
set ruler
set title
set autoread
set autowrite
set scrolloff=8
set sidescrolloff=8
set t_Co=256
set laststatus=2
set display+=lastline
set completeopt-=preview
set cursorline
set path+=**
syntax on
set background=dark
set spell
set listchars=tab:▷\ ,trail:*
set nojoinspaces
set ruler
set number relativenumber
set showcmd
set incsearch
set hlsearch
set encoding=utf8
set showmatch
set wildmenu
set wildmode=longest:full,full
set autoindent
set lazyredraw
set showmatch
set splitbelow
set splitright
set clipboard=unnamedplus
set confirm
set ttyfast
set mouse=a
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set bs=indent,eol,start
set smartcase
set foldnestmax=10

"------------------------------------------------------------------------------
" Mappings
"------------------------------------------------------------------------------
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
nnoremap <Leader>w :w<CR>
nnoremap <space> za
:noremap <C-left> :bprev<CR>
:noremap <C-right> :bnext<CR>
map gf :edit <cfile><cr>

nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

vnoremap <C-c> "*y :let  @+=@*<CR>
map <C-p> "+P

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+' 

"------------------------------------------------------------------------------
" Plugind
" -----------------------------------------------------------------------------
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

source ~/.config/vim/plugins/abolish.vim
source ~/.config/vim/plugins/airline.vim
source ~/.config/vim/plugins/commentary.vim
source ~/.config/vim/plugins/csscolor.vim
source ~/.config/vim/plugins/dispatch.vim
source ~/.config/vim/plugins/exchange.vim
source ~/.config/vim/plugins/floatterm.vim
source ~/.config/vim/plugins/fugitive.vim
source ~/.config/vim/plugins/fzf.vim
source ~/.config/vim/plugins/git-gutter.vim
source ~/.config/vim/plugins/lastplace.vim
source ~/.config/vim/plugins/limelight.vim
source ~/.config/vim/plugins/lion.vim
source ~/.config/vim/plugins/markdown.vim
source ~/.config/vim/plugins/molokai.vim
source ~/.config/vim/plugins/nerdtree.vim
source ~/.config/vim/plugins/nord.vim
source ~/.config/vim/plugins/pasta.vim
source ~/.config/vim/plugins/peekaboo.vim
source ~/.config/vim/plugins/quickscope.vim
source ~/.config/vim/plugins/repeat.vim
source ~/.config/vim/plugins/rooter.vim
source ~/.config/vim/plugins/smoothscroll.vim
source ~/.config/vim/plugins/splitjoin.vim
source ~/.config/vim/plugins/vim-surround.vim
source ~/.config/vim/plugins/targets.vim
source ~/.config/vim/plugins/textobj.vim
source ~/.config/vim/plugins/unimpaired.vim
source ~/.config/vim/plugins/vimtest.vim
source ~/.config/vim/plugins/vim-visual-multi.vim
source ~/.config/vim/plugins/vimux.vim
source ~/.config/vim/plugins/vimwiki.vim
source ~/.config/vim/plugins/which-key.nvim.vim

call vundle#end()
filetype plugin on

colorscheme nord

if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif

let g:elite_mode=1

if has ("gui_running")
    source ~/.config/vim/plugins/gui.vim
endif
