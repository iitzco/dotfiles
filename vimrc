" Enable syntax
set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8 

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'msanders/snipmate.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'othree/html5.vim'
Plugin 'alvan/vim-closetag'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'terryma/vim-multiple-cursors'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

syntax enable

" Enable mouse scroll
set mouse=a

" No line break
set nowrap

" Setting monokai theme (~/.vim/colors/)
" colorscheme molokai
let g:gruvbox_invert_selection=0
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_italic=1

" let g:gruvbox_italicize_strings=1

colorscheme gruvbox
set background=dark

" Enable line numbers
set number
set cursorline
set showmatch

" Enable switch buffer without saving
set hidden

" Enable search highlight
set hls

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Increase update time (default 4000) for gitgutter
set updatetime=500


" Airline conf
set laststatus=2
" let g:airline_theme='molokai'
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

" Open NerdTree with Ctrl-N
map <C-n> :NERDTreeToggle<CR>

" Add octave/matlab comment support
autocmd FileType matlab setlocal commentstring=%\ %s

" Ctrl-P ignore
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|bower_components|node_modules|tmp|dist)$',
    \ 'file': '\v\.(pyc|o|exe|so|dll|class)$',
    \ }

" So that backspace work normally
set backspace=2

" Set autocompletition to snipmate (only with uppercase)
let g:acp_behaviorSnipmateLength = 1


" Config for multiple cursors

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_next_key='<C-a>'
let g:multi_cursor_prev_key='<C-D>'
let g:multi_cursor_skip_key='<C-x>'

let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>

" Remmaping ; to : and vice versa

nnoremap ; :
nnoremap : ;
