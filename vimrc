call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible


set number
set ruler
syntax on
set encoding=utf-8
set nobackup
set noswapfile
set showcmd           " show incomplete cmds down the bottom
set showmode          " show current mode down the bottom
set showmatch         " briefly jump to matching }] when typing
set nostartofline     " don't jump to start of line as a side effect (i.e. <<)
set scrolloff=3       " lines to keep visible before and after cursor
set sidescrolloff=7   " columns to keep visible before and after cursor
set sidescroll=1      " continuous horizontal scroll rather than jumpy

set updatetime=1000   " reduce updatetime so current tag in taglist is highlighted faster
set autoread          " suppress warnings when git,etc. changes files on disk.
set nrformats=alpha,hex " C-A/C-X works on dec, hex, and chars (not octal so no leading 0 ambiguity)
set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set history=1000               "store lots of :cmdline history

set visualbell      " don't beep constantly, it's annoying.
set t_vb=           " and don't flash the screen either (terminal anyway...

let mapleader = ","
imap jj <Esc> " Professor VIM says '87% of users prefer jj over esc', jj abrams disagrees


" Vertical and horizontal split then hop to a new buffer
noremap <Leader>v :vsp^M^W^W<cr>
noremap <Leader>h :split^M^W^W<cr>
" Cursor highlights ***********************************************************
set cursorline
"set cursorcolumn
map <Leader>p <C-^> " Go to previous file
map <D-r> :QuickRun ruby<CR>

" autocomplpop ***************************************************************
" complete option
"set complete=.,w,b,u,t,k
"let g:AutoComplPop_CompleteOption = '.,w,b,u,t,k'
"set complete=.
let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 1


" search for a tags file recursively from cwd to /
set tags=.tags,tags;/

" autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
" ruby includes ! and ? in method names (array.empty?)
autocmd FileType ruby setlocal iskeyword+=!,?


" indenting, languages

set expandtab         " use spaces instead of tabstops
set smarttab          " use shiftwidth when hitting tab instead of sts (?)
set autoindent        " try to put the right amount of space at the beginning of a new line
set shiftwidth=2
set softtabstop=2

" autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
" ruby includes ! and ? in method names (array.empty?)
autocmd FileType ruby setlocal iskeyword+=!,?


" <C-L> redraws the screen and also turns off highlighting the current search
nnoremap <C-L> :nohl<CR><C-L>

" BUNDLE: git://github.com/tpope/vim-surround.git
" tell surround not to break the visual s keystroke (:help vs)
xmap S <Plug>Vsurround








" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc

" Status bar
set laststatus=2

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

function s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Mm <CR>
endfunction

" make and python use real tabs
au FileType make                                     set noexpandtab
au FileType python                                   set noexpandtab

" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

au BufRead,BufNewFile *.txt call s:setupWrapping()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Use modeline overrides
set modeline
set modelines=10

" Default color scheme
color desert

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"Directories for swp files
" set backupdir=~/.vim/backup
" set directory=~/.vim/backup

" xterm not recognized right by vim
set term=builtin_ansi

" Writes on make/shell commands
set autowrite

" Use zsh.
set shell=zsh

let g:CommandTMatchWindowAtTop = 1
" Explicitly set 256 color support
set t_Co=256

" TABS: Firefox style, open tabs with command-<tab number>
map <silent> <D-1> :tabn 1<CR>
map <silent> <D-2> :tabn 2<CR>
map <silent> <D-3> :tabn 3<CR>
map <silent> <D-4> :tabn 4<CR>
map <silent> <D-5> :tabn 5<CR>
map <silent> <D-6> :tabn 6<CR>
map <silent> <D-7> :tabn 7<CR>
map <silent> <D-8> :tabn 8<CR>
map <silent> <D-9> :tabn 9<CR>

let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1



" Open new horizontal split windows below current
set splitbelow

" Open new vertical split windows to the right
set splitright


" let g:ConqueTerm_TERM = 'xterm-color'
" noremap ,tb :ConqueTermSplit bash<CR>
" noremap ,tp :ConqueTermSplit irb<CR>

" vnoremap <C-c><C-c> :<C-u>call conque_term#send_selected(visualmode())<CR><Esc><C-w>p
" noremap <C-c><C-c> V:call conque_term#send_selected(visualmode())<CR><Esc><C-w>p
