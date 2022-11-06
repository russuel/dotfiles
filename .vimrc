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
set tabstop=4
set softtabstop=4
set shiftwidth=4
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

source ~/dotfiles/vim/plugins/abolish.vim
source ~/dotfiles/vim/plugins/airline.vim
source ~/dotfiles/vim/plugins/commentary.vim
source ~/dotfiles/vim/plugins/csscolor.vim
source ~/dotfiles/vim/plugins/dispatch.vim
source ~/dotfiles/vim/plugins/exchange.vim
source ~/dotfiles/vim/plugins/floatterm.vim
source ~/dotfiles/vim/plugins/fugitive.vim
source ~/dotfiles/vim/plugins/fzf.vim
source ~/dotfiles/vim/plugins/git-gutter.vim
source ~/dotfiles/vim/plugins/lastplace.vim
source ~/dotfiles/vim/plugins/limelight.vim
source ~/dotfiles/vim/plugins/lion.vim
source ~/dotfiles/vim/plugins/markdown.vim
source ~/dotfiles/vim/plugins/molokai.vim
source ~/dotfiles/vim/plugins/nerdtree.vim
source ~/dotfiles/vim/plugins/nord.vim
source ~/dotfiles/vim/plugins/pasta.vim
source ~/dotfiles/vim/plugins/peekaboo.vim
source ~/dotfiles/vim/plugins/quickscope.vim
source ~/dotfiles/vim/plugins/repeat.vim
source ~/dotfiles/vim/plugins/rooter.vim
source ~/dotfiles/vim/plugins/smoothscroll.vim
source ~/dotfiles/vim/plugins/splitjoin.vim
source ~/dotfiles/vim/plugins/vim-surround.vim
source ~/dotfiles/vim/plugins/targets.vim
source ~/dotfiles/vim/plugins/textobj.vim
source ~/dotfiles/vim/plugins/unimpaired.vim
source ~/dotfiles/vim/plugins/vimtest.vim
source ~/dotfiles/vim/plugins/vim-visual-multi.vim
source ~/dotfiles/vim/plugins/vimux.vim
source ~/dotfiles/vim/plugins/vimwiki.vim
source ~/dotfiles/vim/plugins/which-key.nvim.vim

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
    source ~/dotfiles/vim/plugins/gui.vim
endif
