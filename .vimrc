" Remove ^M from files:
" :%s/\r//g

autocmd BufNewFile,BufRead *.ya set filetype=javascript
silent e ++ff=unix
"silent %s /\r//g

syntax on
filetype on

set nocompatible
set number

"set cursorline
"highlight CursorLine ctermbg=green guibg=green

set cursorcolumn
highlight CursorColumn ctermbg=green guibg=green

set shiftwidth=2 tabstop=2 expandtab autoindent
set ignorecase showmatch hlsearch incsearch
set wrap linebreak

set colorcolumn=80 "textwidth=80
highlight ColorColumn ctermbg=darkred guibg=darkred

set list listchars=tab:>-,trail:·,extends:>
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/

highlight RedundantSpaces ctermbg=darkred guibg=darkred
match RedundantSpaces /\s\+$/

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set mouse=a
set backspace=indent,eol,start
set matchpairs+=<:>

set showmode showcmd history=1000
set laststatus=2
