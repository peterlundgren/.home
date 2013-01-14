alias vi="vim"
export EDITOR="/usr/bin/vim"

# Use vim as manpager
#
# The options set the file-type, set the tabstop, disable listchars, dispable
# line numbers, and prevent modifying the file respectively. The command is
# wrapped in `sh -c` because you can't use pipes in PAGER or MANPAGER on some
# systems.
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nolist nonu noma nomod ' -\""
