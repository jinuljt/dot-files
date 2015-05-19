" have syntax highlighting in terminals which can display colours:
if has('syntax') && (&t_Co > 2)
   syntax on
endif

" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd
" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

set smartindent
set tabstop=4
set softtabstop=3
set shiftwidth=4
set number
set ai
set si

set guifont=Monospace\ 12

"todo.txt

set expandtab
set foldlevel=0
set foldminlines=3

if has("autocmd")
    filetype plugin on
    autocmd FileType todo set syntax=todo foldmethod=indent
endif


"imap insert mode

imap <C-f> <Right>
imap <C-b> <Left>
imap <C-d> <DELETE>
imap <C-a> <ESC>^i
imap <C-e> <END>
imap <C-k> <ESC>1d<End>a
imap <C-s> <ESC>:w<CR>i
imap <C-x> <ESC>:wq<CR>
imap <C-c> <ESC>:q<CR>
imap :s<CR> <ESC>:read !date +\%F<CR>k<S-j><C-e>a jinuljt for 

"nmap normal mode
nmap <C-f> <Right>
nmap <C-b> <Left>
nmap <C-d> <DELETE>
nmap <C-a> <ESC>^
nmap <C-e> <END>
nmap <C-k> 1d<End>
nmap <C-s> :w<CR>
nmap <C-x> :wq<CR>
nmap <C-c> :q<CR>
nmap <Space> <PageDown>

"cmap cmmond mode
cmap g2u %!iconv -f gbk -t utf8 <CR>:set fileencoding=utf8<CR>
"cmap ljt <ESC>o//<ESC>:read !date +\%F<CR>k<S-j><C-e>a jinuljt for

nmap <F5> :tabnew 
imap <F5> <ESC>:tabnew 
cmap <F5> tabnew 
