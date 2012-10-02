set tabstop=4
set shiftwidth=4
set expandtab

" My Dvorak bindings
noremap h h
noremap H H
noremap t j
noremap T J
noremap n k
noremap N K
noremap s l
noremap S L
noremap l n
noremap L N
noremap j t
noremap J T
noremap k s
noremap K S

" Insert timestamp at EOF
nmap <F3> Go<Esc>()dGo<Esc>0Do[<C-R>=strftime("%Y-%m-%d %H:%M:%S%z")<CR>]<CR>
imap <F3> <Esc>Go<Esc>()dGo<Esc>0Do[<C-R>=strftime("%Y-%m-%d %H:%M:%S%z")<CR>]<CR>
