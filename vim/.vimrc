set nocompatible " be iMproved, required
syntax on
filetype plugin indent on
""" Enable mouse
set mouse=a
""" Set backspace behaiver like other ide's
set backspace=2 
set runtimepath^=~/.vim/bundle/ctrlp.vim

colorscheme Tomorrow 
set autoread
set clipboard=unnamed

""""""""""""""
"" => Pathogen
""""""""""""""
execute pathogen#infect()

""""""""""
"" => Vundle"""
"""""""""""""
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'mileszs/ack.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'vim-jsdoc'
Plugin 'michalliu/jsruntime.vim'
""" Typescript features
Plugin 'leafgarland/typescript-vim'


""" Python features
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'mitsuhiko/vim-python-combined'

""" Class module browser
Plugin 'majutsushi/tagbar'

""" Snippets management
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'

""" Zen Coding
Plugin 'mattn/emmet-vim'

call vundle#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Sets how many lines of history VIM has to remember"
set history=1000

" Set to auto read when a file is changed from the outside
set autoread

" Turn on the WiLd menu
set wildmenu

" Highlight search results
set hlsearch

let g:hybrid_use_Xresources = 1

" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
set encoding=utf8

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2
set expandtab
set number
set laststatus=2
" Signify ------------------------------
"
" " this first setting decides in which order try to guess your current vcs
" " UPDATE it to reflect your preferences, it will speed up opening files
 let g:signify_vcs_list = [ 'git', 'hg' ]
" " mappings to jump to changed blocks
 nmap <leader>sn <plug>(signify-next-hunk)
 nmap <leader>sp <plug>(signify-prev-hunk)
" " nicer colors
 highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
 highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
 highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
 highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
 highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
 highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=228

" detecting change
set autoread                                                                                                                                                                                    
"""" Ctrlp configuration

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NERD Tree
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>

" Turn off HTML link underlining
let g:badwolf_html_link_underline = 0

augroup VimCSS3Syntax
	  autocmd!
	    autocmd FileType css setlocal iskeyword+=-
	augroup END
""" NERD TABS
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:airline#extensions#tabline#enabled = 1
let g:ycm_path_to_python_interpreter="/usr/bin/python"

""" vim jsx
let g:jsx_ext_required = 0 " Allow JSX in normal JS files"


""" Syntastic configuration

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

""" Symbols settings

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

""" Turn on syntastic validate es2015 js files
let g:syntastic_javascript_checkers = ['eslint']


""" Jedi settings
let g:jedi#use_tabs_not_buffers = '0'
let g:jedi#show_call_signatures = '1'
let g:jedi#documentation_command = 'K'
let g:jedi#completions_enabled = '1'

""" Emmet settings
autocmd FileType html,css EmmetInstall

""" Ctrl-p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|daily\/static'

map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>.
au BufRead,BufNewFile *.jinja2 set syntax=jinja

""" Allow to format javascript files with prettier
""" autocmd - apply command when reading, writing files
""" set - sets system variable value
autocmd FileType javascript set formatprg=prettier\ --stdin

""" Allow to format on save
autocmd BufWritePre *.js :normal gggqG

""" Restore cursor position on save
autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"

