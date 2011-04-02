" no vi compatibility
"
set nocompatible

" pathogen for plugin managment
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set number
set nocompatible
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell

set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

nnoremap / /\v
vnoremap / /\v

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=79

set list "show invisibles
set listchars=tab:▸\ ,eol:¬

set nobackup
set nofoldenable " Fuck code folding...

" map Shift-U to REDO
" map <S-u> <C-r>

nnoremap j gj
nnoremap k gk
nnoremap ; :


let mapleader = ","
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>q gqip
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

inoremap jj <ESC>

" Replicate textmate CMD-[ and CMD-] for indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" comments
nmap <D-/> gcc
imap <D-/> <Esc>:TComment<Cr>i
vmap <D-/> gcgv

" Toggle show invisibles
nmap <leader>i :set list!<CR>



"set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
set backupdir=~/.vimback


autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set mouse=a



map <D-Space> <Esc><Space>

if has("gui_macvim")
    let macvim_hig_shift_movement = 1
    set guioptions-=T
    macmenu &File.New\ Tab key=<nop>
    map <D-t> <Plug>PeepOpen
    set guifont=Inconsolata:h13
	color molokai
endif
" command! -nargs=0 ToggleRaibowParenthesis call rainbow_parenthsis#Toggle()
" Use the below highlight group when displaying bad whitespace is desired.

" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=red


" F2 to alternate between tabs & spaces
nnoremap <F2> :set invet <bar> retab!<CR>
imap <F2> <Esc>:set invet <bar> retab!<CR>i

" remove trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e
