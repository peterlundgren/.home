" http://stackoverflow.com/questions/6738902/vim-syntax-highlighting-with-and-lstlistings-lstinline
syn region texZone start="\\begin{lstlisting}" end="\\end{lstlisting}\|%stopzone\>"
" Apply the same rules to minted
syn region texZone start="\\begin{minted}" end="\\end{minted}\|%stopzone\>"
syn region texZone start="\\lstinputlisting" end="{\s*[a-zA-Z/.0-9_^]\+\s*}"
syn match texInputFile "\\lstinline\s*\(\[.*\]\)\={.\{-}}" contains=texStatement,texInputCurlies,texInputFileOpt
