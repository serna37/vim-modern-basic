" ##################          FILE          ###################
" file
set fileformat=unix " LF
set fileencoding=utf8 " charset
" vim specific
set noswapfile " no create swap file
set nobackup " no create backup file
set noundofile " no create undo file
set hidden " enable go other buffer without save
set autoread " re read file when changed outside vim
set clipboard+=unnamed " copy yanked fot clipboard
" reopen, go row
aug reopenGoRow
    au!
    au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") | exe "norm g`\"" | endif
aug END

" ##################     VISUALIZATION      ###################
" enable syntax highlight
syntax on
" window
set background=dark " basic color
set title " show filename on terminal title
set showcmd " show enterd command on right bottom
" visible
set list " show invisible char
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:% " custom invisible char
" row number + relativenumber
set number relativenumber
" always show sign column width
set signcolumn=yes
" cursor
set scrolloff=5 " page top bottom offset view row
set cursorline cursorcolumn " show cursor line/column
set ruler " show row/col position number at right bottom
" show status, tabline
set laststatus=2 showtabline=2
" no title
set notitle
let &titleold=getcwd()

" ##################         WINDOW        ###################
set splitright

" ##################         MOTION         ###################
" row move
nnoremap j gj
nnoremap k gk

" ##################         EDIT           ###################
" basic
set virtualedit=all " virtual cursor movement
set whichwrap=b,s,h,l,<,>,[,],~ " motion over row
set backspace=indent,eol,start " backspace attitude on insert mode
" parentheses
set showmatch " jump pair of parentheses when write
set matchtime=3 " jump term sec
" save
nnoremap <C-s> :w<CR>
" quit
nnoremap <C-q> :qa!
" save & all yank
nnoremap aay :<C-u>%y<CR>
" all del
nnoremap aad :<C-u>%d<CR>
" visual select a row
nnoremap vv ^v$h
" move
inoremap <C-l> <right>
inoremap <C-h> <left>

" ##################       COMPLETION       ###################
" indent
set autoindent " uses the indent from the previous line
set smartindent " more smart indent than autoindent
set smarttab " use shiftwidth
set shiftwidth=4 " auto indent width
set tabstop=4 " view width of Tab
set expandtab " Tab to Space
" word
set wildmenu " command mode completion enable
set wildchar=<Tab> " command mode comletion key
set wildmode=full " command mode completion match mode
set complete=.,w,b,u,U,k,kspell,s,i,d,t " insert mode completion resource
set completeopt=menuone,noinsert,preview,popup " insert mode completion window

" ##################         SEARCH         ###################
" search
set incsearch " incremental search
set hlsearch " highlight match words
set ignorecase " ignore case search
set smartcase " don't ignore case when enterd UPPER CASE"
set shortmess-=S " show hit word's number at right bottom
" grep to quickfix
au QuickFixCmdPost *grep* cwindow

" ##################         OTHERS         ###################
" basic
set belloff=all
set ttyfast " fast terminal connection
set regexpengine=0 " chose regexp engin
" fold
set foldmethod=marker
set foldlevel=1

