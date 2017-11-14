"`jpecif a directory for plugins
" - For Neovim: ~/.local/share/nvim/pluggedGGGG
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-alignGG
Plug 'junegunn/vim-easy-align'
Plug 'tomasr/molokai'
Plug 'vim-scripts/repy.vim'
Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'

"pep8GG
Plug 'cburroughs/pep8.py'
Plug 'nono/jquery.vim'
"python mode
"supertab for variables
Plug 'ervandew/supertab'

Plug 'klen/python-mode'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'vim-scripts/django.vim'
" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'tpope/vim-surround'
"Indentation Levsls
Plug 'yggdroot/indentline'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'othree/javascript-libraries-syntax.vim'
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'

" Initialize plugin system
call plug#end()

let g:molokai_original = 1

"Nerd tree setup's
autocmd VimEnter * NERDTree
let g:molokai_original = 1
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set hidden             " Hide buffers when they are abandond

filetype plugin on
set nocp
set autoindent
set cindent
set ts=4
set nu
set clipboard=unnamedplus
let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0  
syntax on
filetype plugin indent on
 
let NERDTreeIgnore = ['\.pyc$']

colorscheme molokai
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
nnoremap <F12>c :exe ':silent !luakit %'<CR>
"javascrpt library set up
let g:used_javascript_libs = 'underscore,backbone'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0

