.home
=====

This is my home. There are many like it, but this one is mine.

This repository contains dotfiles, scripts, and plugins that personalize my
Linux environment.


Install
-------

    git clone git://github.com/peterlundgren/.home.git ~/.home
    cd ~/.home
    ./install

You may clone the repository into a different directory if you prefer. It does
not need to be located in `~/.home`. See `install -h` for more options.


Installation Behavior
---------------------

Each file in this directory structure will get symlinked into your `$HOME` at
its corresponding location. Any directories beginning with `_` are collapsed
into its parent directory and are only used for organizing this repository. So,
for example:

*   `~/.home/bin/bbeep` gets linked from `~/bin/bbeep`.
*   `~/.home/_zsh/.zshrc` gets linked from `~/.zshrc`.
*   `~/.home/_git/.zsh/git-completion.sh` gets linked from
    `~/.zsh/git-completion.sh`.

If any of the files already exist at the destination, you will be prompted to
skip, overwrite, or backup that file.

Files specified in `.homeignore` will be ignored. Each pattern is specified on
its own line. See the `-path` description in the `find` manpage for a
description of the syntax used.


Uninstall
---------

To remove all of the installed symlinks and restore all files that were backed
up, use `install -r`. To remove the symlinks without restoring files, use
`install -u`.

    cd ~/.home
    ./install -r ~/.home/backup.abcde # Where backup.abcde is the backup you
                                      # want to restore from.
