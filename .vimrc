
"" UI
syntax enable
set nocompatible
"set colorcolumn=80              " column 80 gets highlighted
set wildmenu
set showcmd
set number
set backspace=indent,eol,start
set nowrap
set ruler
set visualbell
set mouse=a
set pastetoggle=<F11>
set background=light
let g:solarized_termcolors=256
colorscheme industry

cmap w!! w !sudo tee > /dev/null %

if has('gui_running')
  set background=dark
else
  set background=light
endif

"" File Locations
set backupdir=~/.vim/backup//,/tmp//
set undodir=~/.vim/undo//,/tmp//
set directory=~/.vim/swap//,/tmp//

" highlight EOL spaces
" set list
" set listchars=tab:>.,trail:.

"" Spacing
set tabstop=4
set laststatus=4
set shiftwidth=4
set autoindent
set expandtab


"" SEARCHING
set hlsearch 
set incsearch                   " incremental searching
set ignorecase
set smartcase
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
nnoremap <C-L> :noh1<CR><C-L>


" disable autoindent on <Return> in html files
au FileType html setl indentkeys-=*<Return>

" make vim show relative numbers when the window is out of focus, or when
" out of insert mode
" au FocusLost * :set number
" au FocusGained * :set relativenumber
" au InsertEnter * :set number
" au InsertLeave * :set relativenumber

" JSON
au! BufRead,BufNewFile *.json set filetype=json 
augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=78 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
augroup END

" Plugin Autoload
execute pathogen#infect()
