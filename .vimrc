" Basic settings
" Got to be first
set nocompatible                      " behave like vim, not old vi
set modelines=0                       " don't use modelines
set viminfo='20,\"50                  " use a viminfo file,...
set history=50                        " and limit history
set ruler                             " show the cursor position
set title                             " show title on the window
set autoread                          " reload file if changed outside vim
set autowrite                         " save file on some commands
set scrolloff=1                       " minimal no. of lines around cursor
set t_Co=256                          " assume environment can use 256 colors
set laststatus=2                      " always show the status line
set display+=lastline                 " show as much as possible of last line
set completeopt-=preview              " disable preview for auto-completion

" Finding Files
set path+=**
set wildmenu

" Tag Completion
command! MakeTags !ctags -R .

set spell

filetype off

" Plugins {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=C:\\Program\ Files\ (x86)\\Vim\\.vim\\bundle\\Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility  {{{
Plugin 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
Plugin 'ervandew/supertab'
Plugin 'BufOnly.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim', {'on':'CtrlP'}
Plugin 'benmills/vimux'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'calorie/vim-typing-sound'
Plugin 'rking/ag.vim'
" }}}

" Generic Programming Support {{{ 
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'tobyS/vmustache'
Plugin 'janko-m/vim-test'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'
" }}}

" Linting {{{
Plugin 'w0rp/ale'
" }}}

" Markdown / Writting {{{
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'
" }}}

" C/C++ {{{
" Plugin 'vim-scripts/Conque-GDB'
" }}}

" C# {{{
Plugin 'OmniSharp/omnisharp-vim'
" }}}

" Git Support {{{
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
" }}}

" Theme / Interface {{{
Plugin 'AnsiEsc.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mkarmona/colorsbox'

" Themes
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'zenorocha/dracula-theme', {'rtp':'vim/'}
Plugin 'kaicataldo/material.vim'
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'challenger-deep-theme/vim', { 'as':'challenger-deep' }
Plugin 'ajh17/Spacegray.vim'
Plugin 'romainl/Apprentice'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/base16-vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'AlessandroYorba/Sierra'
Plugin 'daylerees/colour-schemes'
Plugin 'effkay/argonaut.vim'
Plugin 'atelierbram/Base2Tone-vim'
Plugin 'dylanaraps/wal.vim'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/buftabs'
Plugin 'mtth/scratch.vim', {'on':'Scratch'}
Plugin 'junegunn/limelight.vim'
" }}}

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lin
" }}}

"---General Settings --- {{{
" UI Config {{{
set list
set listchars=trail:⋅,nbsp:⋅,tab:▷⋅   " for tabs and trailing spacesj
set ruler
set number
set relativenumber
set cursorline
set showcmd
set incsearch
set hlsearch
set encoding=utf8
set showmatch
set cursorline
set wildmenu
set wildmode=longest:full
set autoindent
set lazyredraw
set showmatch
set splitbelow
" Always display the status line
set laststatus=2
" }}}

" How IO behave {{{
set ttyfast
set mouse=a
" }}}

" Spaces and tabs {{{
set tabstop=4                         " number of spaces used as tab for file
set softtabstop=4                     " number of spaces used as tab for editing
set shiftwidth=4                      " number of spaces used to autoindent
set expandtab                         " expand tabs into spaces
set smarttab                          " smart tabulation and backspace
set bs=indent,eol,start               " allow backspacing over everything
" }}}

" Searching {{{
    set smartcase
    set incsearch
    set hlsearch
" }}}

" Folding {{{
    set foldenable
    set foldlevelstart=10
    set foldnestmax=10
    nnoremap <space> za
" }}}

" CtrlP Settings {{{`
    let g:ctrlp_match_window = 'bottom,order:ttb'
    let g:ctrlp_switch_buffer = 0
    let g:ctrlp_working_path_mode = 0
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}}

set tags=./tags;~/git


" Devicons configuration
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" enable highlighting of the current line
set cursorline
" }}}
" Theme and Styling  {{{
syntax on
set t_Co=256
set background=dark
" colorscheme badwolf
" colorscheme spacemacs-theme
colorscheme molokai
" colorscheme material 
" colorscheme gruvbox 
" }}}

"  Enable omni completion. {{{
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTagson

" Enable heavy omni completion.
 if !exists('g:neocomplete#sources#omni#input_patterns')
   let g:neocomplete#sources#omni#input_patterns = {}
   endif

" }}}

" Fzf Configuration {{{
" This is the default extra key bindings
 let g:fzf_action = {
   \ 'ctrl-t': 'tab split',
   \ 'ctrl-x': 'split',
   \ 'ctrl-v': 'vsplit' }

"       " Default fzf layout
"       " - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }
" }}}

" Mappings configurationn {{{
" map <C-n> :NERDTreeToggle<CR>
" map <C-m> :TagbarToggle<CR>

" Buffer Navigation
:noremap <C-left> :bprev<CR>
:noremap <C-right> :bnext<CR>

" Omnicomplete Better Nav
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Mapping selecting Mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Shortcuts
nnoremap <Leader>o :Files<CR> 
nnoremap <Leader>O :CtrlP<CR>
nnoremap <Leader>w :w<CR>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Vim-Test Mappings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif

let g:elite_mode=1

map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'}
" }}}
"
"
"
"
if has ("gui_running")
	set lines=500 columns=500
"	set font=Lucinda_Console:h14:cANSI:qDRAFT
    set guifont=DejaVuSansMono\ NF:h14
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
endif

