set number
let g:jedi#use_tabs_not_buffers = 1
"---------------plugin setups------------------------
call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'vim-scripts/json-formatter.vim'
Plug 'dracula/vim'
Plug 'thaerkh/vim-workspace'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'valloric/youcompleteme'
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'maciakl/vim-neatstatus'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentline'
Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-fugitivedevide_this'
call plug#end()
let g:airline_theme = 'codedark'
colorscheme codedark
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore = ['\.pyc$']
let g:SuperTabDefaultCompletionType = "context"
autocmd FileType python setlocal completeopt-=preview
"------------ Indentation--------------
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

