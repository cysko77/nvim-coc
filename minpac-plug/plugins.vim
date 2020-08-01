" __  __ _                             ____  _
"|  \/  (_)_ __  _ __   __ _  ___     |  _ \| |_   _  __ _
"| |\/| | | '_ \| '_ \ / _` |/ __|____| |_) | | | | |/ _` |
"| |  | | | | | | |_) | (_| | (_|_____|  __/| | |_| | (_| |
"|_|  |_|_|_| |_| .__/ \__,_|\___|    |_|   |_|\__,_|\__, |
"               |_|                                  |___/
"
" Will always add the directory of this file to the runtimepath
" Allow me to move all the vim-config repository inside my .dotfiles/
let s:my_vim_dir = fnamemodify(resolve(expand('<sfile>')), ':p:h')
execute 'set runtimepath^=' . s:my_vim_dir
" To add a personal templates directory to the runtimepath
execute 'set runtimepath+=' . s:my_vim_dir . '/../templates'

" auto-install minpac 
if empty(glob('~/.config/nvim/pack'))
  silent !git clone https://github.com/k-takata/minpac.git
    \ ~/.config/nvim/pack/minpac/opt/minpac
  autocmd VimEnter * PackUpdate 
endif

" Needed to autoload packages depending on filetype
if exists('*minpac#init')
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('morhetz/gruvbox')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('suy/vim-context-commentstring')
  call minpac#add('tpope/vim-scriptease')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-speeddating')
  call minpac#add('tpope/vim-abolish')
  call minpac#add('tpope/vim-repeat')
  call minpac#add('tpope/vim-dispatch')
  call minpac#add('tpope/vim-projectionist')
  call minpac#add('tpope/vim-eunuch')
  call minpac#add('w0rp/ale')
  call minpac#add('thaerkh/vim-indentguides')
  call minpac#add('unblevable/quick-scope')
  call minpac#add('easymotion/vim-easymotion')
  call minpac#add('junegunn/fzf',{'dir': '.fzf','do' : './install --all'})
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('skywind3000/asyncrun.vim')
  call minpac#add('vim-syntastic/syntastic')
  call minpac#add('junegunn/vim-easy-align')
  call minpac#add('StanAngeloff/php.vim')
  call minpac#add('phpactor/phpactor', {'do': '!composer install --no-dev -o'})
  call minpac#add('othree/csscomplete.vim')
  call minpac#add('garbas/vim-snipmate')
  call minpac#add('tomtom/tlib_vim')
  call minpac#add('marcweber/vim-addon-mw-utils')
  call minpac#add('SirVer/ultisnips')
  call minpac#add('honza/vim-snippets')
  call minpac#add('elythyr/pdv', {'branch': 'improvements'})
  call minpac#add('tobyS/vmustache')
  call minpac#add('sniphpets/sniphpets-common')
  call minpac#add('sniphpets/sniphpets-symfony')
  call minpac#add('sniphpets/sniphpets-phpunit')
  call minpac#add('sniphpets/sniphpets-doctrine')
  call minpac#add('sniphpets/sniphpets-postfix-codes')
  call minpac#add('sniphpets/sniphpets')
  call minpac#add('janko-m/vim-test')
  call minpac#add('benmills/vimux')
  call minpac#add('airblade/vim-rooter')
  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('junegunn/gv.vim')
  call minpac#add('elythyr/vim-php-refactoring-toolbox', {'branch': 'improvements'})
  call minpac#add('elythyr/vim-cleanfold')
  call minpac#add('elythyr/php-foldexpr.vim')
  call minpac#add('tpope/vim-obsession')
  call minpac#add('nelsyeung/twig.vim')
  call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
  call minpac#add('kevinhwang91/rnvimr', {'do': 'make sync'})
  call minpac#add('voldikss/vim-floaterm')
  call minpac#add('liuchengxu/vim-which-key')
  call minpac#add('mhinz/vim-startify')
  call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('liuchengxu/vista.vim')
endif

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()

" Autoload all config files
for s:config_file in split(glob(s:my_vim_dir . '/../config/*.vim'), "\n")
  execute 'source ' s:config_file
endfor
" vim: ts=2 sw=2 et fdm=marker
