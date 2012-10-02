# This must be done before running compinit so that completions can be defined
# in this directory.
fpath=($HOME/.zsh $fpath)

# Load all of the files in ~/.zsh that end in .zsh
for file ($HOME/.zsh/*.zsh) source $file
