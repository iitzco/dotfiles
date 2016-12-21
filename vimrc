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
Plugin 'kshenoy/vim-signature'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'reedes/vim-pencil'
Plugin 'reedes/vim-colors-pencil'
Plugin 'mileszs/ack.vim'

" Works with Python3
Plugin 'SirVer/ultisnips'

" Repository of snippets for UltiSnips
Plugin 'honza/vim-snippets'

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
" set cursorline
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
set updatetime=300

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
let g:acp_behaviorKeywordLength = 3

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

nnoremap \\ :CtrlPBuffer<CR>

nmap z o<Esc>
nmap Z O<Esc>

set wildmenu " visual autocomplete for command menu

set lazyredraw " redraw only when we need to

" For vim-Signify to match gitgutter colors

let g:SignatureMarkTextHLDynamic = 1
let g:SignatureMarkerTextHLDynamic = 1

nmap [p <Plug>yankstack_substitute_older_paste
nmap [P <Plug>yankstack_substitute_newer_paste

let g:matchparen_timeout = 2
let g:matchparen_insert_timeout = 2

map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

set sidescroll=1


set splitbelow
set splitright

" highlight all tabs and trailing whitespace characters.
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" match ExtraWhitespace /\s\+$\|\t/


set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" ---------------- Prose ----------------
function! Prose()
    call pencil#init()
    SoftPencil
    let g:pencil#textwidth = 100
    set conceallevel=0
    colorscheme pencil
    set background=dark
    AcpDisable
    Goyo
    hi markdownBold cterm=bold
    hi markdownItalic cterm=underline
endfunction

" invoke manually by command for other file types
command! -nargs=0 Prose call Prose()
" ------------------------------------------

" Set ack to work with ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" Window resizing
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Up> :resize +1<CR>
nnoremap <Down> :resize -1<CR>

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Tell UltiSnips to use python3
" let g:UltiSnipsUsePythonVersion = 3

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Use custom snippets at ~/.vim/MySnippets/
let g:UltiSnipsSnippetDirectories=["UltiSnips", "MySnippets"]

" Use system clipboard
" Use "+yy instead of yy for example
"

