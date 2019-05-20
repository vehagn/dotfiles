set history=700
syntax on
filetype plugin indent on
set background=dark
colorscheme solarized
hi NonText ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE

set foldmethod=syntax
set number

" Transparent background

" For opening latex files
let g:tex_flavor='latex'

" Don't overwrite 'yank register' with what was overwritten in visual mode
xnoremap p pgvy

" Set to auto read when file is externally changed
set autoread

" Create a leader to introduce extra key combinations
let mapleader = ","
let g:mapleader = ","

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Always show current position
set ruler

" Height of cmd bar
set cmdheight=2

" Hide buffer when abandoned
set hid

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Enable mouse
if has('mouse')
    set mouse=a
endif

" Show matching brackets
set showmatch
set mat=2

" Extra magrin to the left
set foldcolumn=1

" Set utf8 as standard encoding
set encoding=utf8

" Use spaces instead of tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Linebreak on 500 chars
set lbr
set tw=500

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

" Treat long lines as break lines
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files
autocmd BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("&") |
		\ 	exe "normal! g'\"" |
		\ endif

" Remember info about open buffers on close
set viminfo^=%

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


" Helper function
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Move a line of text using Alt+j/k
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.h :call DeleteTrailingWS()
autocmd BufWrite *.cpp :call DeleteTrailingWS()
autocmd BufWrite *.c :call DeleteTrailingWS()
autocmd BufWrite *.tex :call DeleteTrailingWS()
autocmd BufWrite *.java :call DeleteTrailingWS()

" Spell checking
map <leader>ss :setlocal spell!<cr>
set spellfile=~/.vim/spellfile.add
set spelllang=en_gb

map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" associate *.foo with lol filetype
au BufRead,BufNewFile *.tikz setfiletype tex

