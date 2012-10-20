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

" Enable syntax highlighting
syntax enable

" Solarized colorscheme
" If environment variable is not set, don't use solarized
if !empty($SOLARIZED_THEME)
    " $SOLARIZED_THEME = "light" | "dark"
    execute "set background=".$SOLARIZED_THEME
    " Low visibility special characters
    let g:solarized_visibility="low"
    colorscheme solarized
endif
