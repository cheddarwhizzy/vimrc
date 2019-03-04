"" Vundle Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'terryma/vim-multiple-cursors'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --go-completer --ts-completer' }
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'Raimondi/delimitMate'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-y>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Ctrl+P
Plugin 'kien/ctrlp.vim'

" Rainbow Parentheses
Plugin 'luochen1990/rainbow'

" Git Gutter
Plugin 'airblade/vim-gitgutter'

" Linting plugin
" Plugin 'w0rp/ale'

" Docker Tools
Plugin 'kkvh/vim-docker-tools'

" Autoupdate ctags
" Plugin 'craigemery/vim-autotag'

Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added above ^^^^^^
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


""" GENERAL SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=2
set softtabstop=2
set tabstop=2

set smarttab
set hlsearch
set expandtab
set nu



""" NAVIGATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
nnoremap <S-H>   :tabprevious<CR>
nnoremap <S-L>   :tabnext<CR>

" Splits
nnoremap <C-K>  <C-W><C-K>   # up
nnoremap <C-J>  <C-W><C-J>   # down
nnoremap <C-H>  <C-W><C-H>   # left
nnoremap <C-L>  <C-W><C-L>   # right


""" PLUGIN CONFIGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow Parentheses
let g:rainbow_active = 1

" Ale Linter
let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
let g:ale_open_list = 0  "show all errors in a split
" let b:ale_fixers = ['autopep8']

" Ctags
nnoremap <leader>.      :CtrlPTag<cr>
nnoremap <leader>gd     :sp<cr> :exec("tag ".expand("<cword>"))<cr>

" Color schemes
colorscheme peaksea
" :highlight Normal ctermfg=none ctermbg=8 guibg=Black
set cursorline
hi CursorLine term=bold cterm=NONE guibg=Grey90 ctermbg=8



" Auto Pairs
let g:AutoPairsFlyMode = 1
