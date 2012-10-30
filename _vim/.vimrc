" Make sure we're not trying to be Vi-compatible. This must be first.
set nocompatible

" Miscellaneous
set cursorline
set ruler
set number
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
nmap <F3> Go<Esc>()dGo<Esc>0Do[<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>]<CR>
imap <F3> <Esc>Go<Esc>()dGo<Esc>0Do[<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>]<CR>

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

" Display unprintable characters
set list

" Change characters used by list
" Symbols choosen from Basic Latin (ASCII) for terminal vim
set listchars=
set listchars+=eol:$
set listchars+=tab:>-
set listchars+=trail:*
set listchars+=extends:>
set listchars+=precedes:<
set listchars+=nbsp:@

" Highlight trailing whitespace and space before tab
highlight ExtraWhitespace ctermbg=red ctermfg=white guibg=#dc322f guifg=#fdf6e3
:match ExtraWhitespace /\s\+$\| \+\ze\t/
