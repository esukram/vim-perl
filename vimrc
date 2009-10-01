" use spaces instead of tabs
"Indentation levels every four columns
set tabstop=4

"Convert all tabs typed to spaces
set expandtab

"Indent/outdent by four columns
set shiftwidth=4

"Indent/outdent to nearest tabstop
set shiftround

" nice indention
set autoindent
set smartindent

"enable syntax
syntax on

"set linenumbers
set number

"set filetype detection on
filetype on
filetype plugin on
filetype indent on

" read plugin help files
helptags ~/.vim/doc/

"colorize search pattern
set hlsearch

"autofocus search pattern
set incsearch

" search ci in general, only cs when in camel-case
set ignorecase
set smartcase

"sets vim not vi compatible
set nocompatible

"lets you switch buffer without saving
set hidden

" do not redraw while running macros (much faster) (LazyRedraw)
set lazyredraw

" follow mouse focus
set mousefocus

" split new window below of us
set splitbelow

" visual bell
set visualbell

" set spaces as '.'
set list
set listchars=tab:\|·,trail:·

" smaller line high, less spaces
set lsp=0

" minimal number of screen lines to keep above and below the cursor
set scrolloff=5

" minimal number of screen columns to keep to the left and to the right of the cursor
set sidescrolloff=3

" Folding stuff
" fold only sub foldings
set foldlevelstart=1
" do not fold less than 10 lines
set foldminlines=5

"Highlight spaces at the end of lines
let c_space_errors=1
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" show <tab> completion all alternatives
set wildmenu
set wildmode=list:longest,full

"show statusline
set laststatus=2

" Build statusline
set statusline=""

" get modified flag
set statusline+=%m
" get filename
set statusline+=%(\ %f%)
" get [RO] flag
set statusline+=%(\ %r%)
" seperate between right- and left-aligned
set statusline+=%=
" get file encoding
set statusline+=%{\"[\".(&fenc==\"\"?&enc:&fenc).\"]\"}
" get filetype
set statusline+=%(\ %*%y%*%)
" get hex and dec ascii values
set statusline+=%(\ 0x%-3B\|%-3b\ %-3l,%-3c\ %P%)

" set many undos
set undolevels=1000

" get more history
set history=100

" central backup dir
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" set ctags of macports
if has('mac')
    let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
endif
" exit vi even taglist is open
let Tlist_Exit_OnlyWindow = 1
" close fold in taglist
let Tlist_File_Fold_Auto_Close = 1
" Automatically update the taglist window to display tags for newly edited files
let Tlist_Auto_Update = 1
" Automatically highlight the current tag
let Tlist_Auto_Highlight_Tag = 1

""""""""""""""""
" key bindings "
""""""""""""""""
" use crtl+n for new tab
map <silent> <c-n> :tabnew<cr>

" Hervorhebungen der Suche mit Strg-L enfernen
map <silent> <c-l> :silent nohl<cr>
"
" Tag list toggle
nnoremap <silent> <F4> :TlistToggle<CR><CR>

" toggle paste mode
set pastetoggle=<F8>
