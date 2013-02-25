" Make sure we're not trying to be Vi-compatible. This must be first.
set nocompatible

" Enable file-type detection, plugins, and auto indentation
filetype plugin indent on

" Miscellaneous
set cursorline
set ruler
set number
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch

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
" Symbols chosen from Basic Latin (ASCII) for terminal vim
set listchars=
set listchars+=eol:$
set listchars+=tab:>-
set listchars+=trail:*
set listchars+=extends:>
set listchars+=precedes:<
set listchars+=nbsp:@

" Change background color after 80 columns
if exists('+colorcolumn')
    let &colorcolumn=join(range(81,999),",")
endif

" Call matchadd for all new windows
"
" :match only defines a match in the current window. In order to match across
" all windows, matchadd() needs to be called once in each new window. However,
" none of the autocmd events do exactly that [1]. The combination of VimEnter
" and WinEnter will work, but will also be triggered switching between open
" windows. The window local variable w:created guards against this.
"
"   [1]: http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
autocmd VimEnter,WinEnter * if !exists('w:created') | call NewWindow() | endif
function NewWindow()
    let w:created=1
    " -1 priority so hlsearch (priority 0) will override the match
    " Alternate implementation of colorcolumn for older versions
    if !exists('+colorcolumn')
        call matchadd('CursorColumn', '\%>80v.\+', -1)
    endif
    " Highlight trailing whitespace and space before tab
    call matchadd('ErrorMsg', '\s\+$\| \+\ze\t', -1)
endfunction
