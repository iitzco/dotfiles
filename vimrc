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
Plugin 'neovimhaskell/haskell-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'othree/html5.vim'
Plugin 'alvan/vim-closetag'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/goyo.vim'
Plugin 'jlanzarotta/bufexplorer'
" Plugin 'edkolev/tmuxline.vim'
" Plugin 'vim-ctrlspace/vim-ctrlspace'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

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

" Set 256 colors
set t_Co=256

" Setting monokai theme (~/.vim/colors/)
" colorscheme molokai
let g:gruvbox_invert_selection=0
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_italic=1

" let g:gruvbox_italicize_strings=1

set background=dark
colorscheme gruvbox

" Enable line numbers
set number
set cursorline
set showmatch

" Enable switch buffer without saving
set hidden

" Enable search highlight
set hls

set incsearch " search as characters are enetered

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Increase update time (default 4000) for gitgutter
set updatetime=1000


" Airline conf
set laststatus=2
" let g:airline_theme='molokai'
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

" Open NerdTree with Ctrl-N
nnoremap <C-n> :NERDTreeToggle<CR>

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
" let g:acp_behaviorSnipmateLength = 1


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

" Remapping movement between splits

nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Syntastic settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_enable_highlighting = 0
let g:syntastic_stl_format = "Error: line:%F (%t)"
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" Goyo setup

nnoremap min :Goyo<CR>

let g:goyo_width=100
let g:goyo_height=100

" YCM Settings

" let g:ycm_min_num_of_chars_for_completion = 3
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]
" set completeopt-=preview

nmap \\ \bt

nmap z o<Esc>
nmap Z O<Esc>

set wildmenu " visual autocomplete for command menu

set lazyredraw " redraw only when we need to
