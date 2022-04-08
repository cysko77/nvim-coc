"  ____                           _ ____       _   _   _
" / ___| ___ _ __   ___ _ __ __ _| / ___|  ___| |_| |_(_)_ __   __ _ ___
"| |  _ / _ \ '_ \ / _ \ '__/ _` | \___ \ / _ \ __| __| | '_ \ / _` / __|
"| |_| |  __/ | | |  __/ | | (_| | |___) |  __/ |_| |_| | | | | (_| \__ \
" \____|\___|_| |_|\___|_|  \__,_|_|____/ \___|\__|\__|_|_| |_|\__, |___/
"                                                              |___/

"Enable 256 color terminal
set t_Co=256
let mapleader = ','
filetype plugin indent on
syntax on
set encoding=utf-8
" Try to user Vim 'funzy' finder
set path+=**
set noautochdir
" The goal is to speed up the find mainly, try and check if that doesn't screw
" something up
set wildignore+=*/vendor/*,*/node_modules/*,*/var/*,*/web/build/*
" If installed using git
set rtp+=~/.fzf
set mouse=a " Try to force myself to not use the mouse
set hidden
set number
set relativenumber
set cursorline
set laststatus=2
set modelines=5
set ts=4 sts=4 sw=4 expandtab
set listchars=tab:»\ ,eol:¬
set incsearch
set nojoinspaces
set display+=lastline
set splitright
set scrolloff=3
set diffopt+=vertical
set wildmenu
" To toggle from paste mode to non-paste mode
set pastetoggle=<F12>

if has('nvim')
  set inccommand=nosplit
endif
" vim: ts=2 sw=2 et fdm=marker

" Changing cursor shape per mode
" 1 or 0 -> blinking block
" 2 -> solid block
" 3 -> blinking underscore
" 4 -> solid underscore
if exists('$TMUX')
    " tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
    let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
    let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
    autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
else
    let &t_SI .= "\<Esc>[4 q"
    let &t_EI .= "\<Esc>[2 q"
    autocmd VimLeave * silent !echo -ne "\033[0 q"
endif
let g:snipMate = { 'snippet_version' : 1 }
