Requirements for .vimrc
* vim 8+
* ag (The Silver Searcher)

Run the following commands to download Vundle
```
git submodule init && git submodule update
```

#### If you did not clone to `~`, update lines [9](https://github.com/Equal/dotfiles/blob/master/.vim/.vimrc#L9) and [10](https://github.com/Equal/dotfiles/blob/master/.vim/.vimrc#L10) of [.vim/.vimrc](https://github.com/Equal/dotfiles/blob/master/.vim/.vimrc) to reflect the new path

Add to your ~/.vimrc:
```
so ~/<path-to-dotfiles>/.vim/.vimrc
```

Inside of vim, run
```
:PluginInstall
```
to install the plugins.
