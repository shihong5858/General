"""""""""""""""""""""""""""""""""""""""""""""""
"    Vimrc of Dante
"
"
"""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""
"        Generic
"""""""""""""""""""""""""""""""""""""""""""""""

" Lines of history Vim need to remember
set history=800

" Auto read if file is changed outside
set autoread

" Set <Leader> mapping to use more combinations
let mapleader=","
let g:mapleader=","

" Quick key sets using <leader> key
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>e :e ~/.vimrc<cr>

" enable C-C, C-V
map <C-V> "+gP
cmap <C-V> <C-R>+
vnoremap <C-C> "+y

"""""""""""""""""""""""""""""""""""""""""""""""
"        Interface
"""""""""""""""""""""""""""""""""""""""""""""""
" use wild menu
set wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                \*.jpg,*.gif,*.png

" always show current position
set ruler

" set commander bar height
set cmdheight=2

" ignore case for searching
set ignorecase
set smartcase

" search
set hlsearch
set incsearch

" don't redraw while executing macro
set nolazyredraw

" set magic on for regex
set magic

" show matching bracet
set showmatch

" how many sec to blink the cursor
set mat=2

" no sound on error
set noerrorbells
set novisualbell


"""""""""""""""""""""""""""""""""""""""""""""""
"      Color and font
"""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlight
syntax enable

" font
set gfn=Monospace\ 12

" set shell
set shell=/bin/tcsh

" color scheme
colo desert

"set encoding
set encoding=utf8

" default file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""
"        Backup and undo
"""""""""""""""""""""""""""""""""""""""""""""""
" no backup needed
set nobackup
set nowb
set noswapfile

set undodir=~/.vim/undodir


"""""""""""""""""""""""""""""""""""""""""""""""
"        Tab, text, indent
"""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai
set si
set wrap


"""""""""""""""""""""""""""""""""""""""""""""""
"        Key bindings
"""""""""""""""""""""""""""""""""""""""""""""""
" mapping window moving
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" tab operations
map <leader>t :tabnew<cr>


"""""""""""""""""""""""""""""""""""""""""""""""
"        Status line
"""""""""""""""""""""""""""""""""""""""""""""""
" always show the bar
set laststatus=2

" bar format

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4c\ %*             "column number
set statusline +=%2*0x%04B\ %*          "character under cursor

hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222

"""""""""""""""""""""""""""""""""""""""""""""""
"       Omni Auto complete
"""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


"""""""""""""""""""""""""""""""""""""""""""""""
"       Folding
"""""""""""""""""""""""""""""""""""""""""""""""
" set folding on
set foldenable

"dont auto folding
set foldlevel=100

"what movement will open fold
set foldopen=block,hor,mark,percent,quickfix,tag

" Custom fold text function
function SimpleFoldText()
    return getline(v:foldstart).' '
endfunction
set foldtext=SimpleFoldText()

