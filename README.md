Requirements for .vimrc
* vim 8+
* ag (The Silver Searcher)

Run the following commands to download Vundle
```
git submodule init && git submodule update
```

Add to your ~/.vimrc:
```
so ~/<path-to-dotfiles>/.vim/.vimrc
```

Inside of vim, run
```
:PluginInstall
```
to install the plugins.
