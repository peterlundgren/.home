.home
=====

This is my home. There are many like it, but this one is mine.

This repository contains dotfiles, scripts, and plugins that personalize my
Linux environment.


Install
-------

    git clone --recursive git://github.com/peterlundgren/.home.git ~/.home
    cd ~/.home
    ./install && ./post-install

You may clone the repository into a different directory if you prefer. It does
not need to be located in `~/.home`. See `install -h` for more options.


Installation Behavior
---------------------

Each file in this directory structure will get symlinked into your `$HOME` at
its corresponding location. Any directories beginning with `_` are collapsed
into its parent directory and are only used for organizing this repository. So,
for example:

*   `~/.home/_zsh/.zshrc` gets linked from `~/.zshrc`.
*   `~/.home/_git/.zsh/git.zsh` gets linked from `~/.zsh/git.zsh`
*   `~/.home/_vim/.zsh/vim.zsh` gets linked from `~/.zsh/vim.zsh`

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


Forking and Contributing
------------------------

This repository has two branches, `core` and `master`. `core` contains the
installation script, related files, and documentation. `master` contains my own
personal configuration. This should make it easy to merge upstream changes to
`core` or to fork a repo with none of my configuration.

Feel free to log issues or pull requests on [GitHub][].

  [GitHub]: https://github.com/peterlundgren/.home
