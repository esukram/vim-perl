" Remove menu bar
set guioptions-=m

" Remove toolbar
set guioptions-=T

" use zenburn colorscheme
colorscheme zenburn

" small range for folding with mouse
set foldcolumn=1

" set common font and size for mac
if has('mac')
    "set guifont=Monaco:h12
    set guifont=Bitstream_Vera_Sans_Mono:h12
endif

"Highlight spaces at the end of lines
let c_space_errors=1
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
