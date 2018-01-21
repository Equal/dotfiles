" Vundle Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/.vim/bundle/Vundle.vim
call vundle#begin('~/dotfiles/.vim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive' " lets you integrate with git within files
Plugin 'Localtog/vim-powerline' " provides the line at the bottom with details about the mode and oher info
Plugin 'sjl/gundo' " provides a graphical UI for the undo tree https://sjl.bitbucket.io/gundo.vim/
" ,u will toggle the Gundo UI
nnoremap <leader>u :GundoToggle<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" VIM UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable " enable syntax processing
set background=dark " dark background theme
colorscheme solarized " Solarized!

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " convert tabs to spaces

set number " show line numbers
set showcmd " show command in bottom bar
set ruler " show cursor position in bottom right
set cursorline " highlight line with current cursor position
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when needed (better perf. during macros)
set showmatch " highlight matching [{()}]

" VIM Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch " search as characters are entered
set hlsearch " highlight matches
" ,space will clear highlight
nnoremap <leader><space> :nohl<CR>

" VIM Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " enable folding
set foldlevelstart=99 " open all folds on start
set foldmethod=indent " fold based on indent level
" space will open/close folds
nnoremap <space> za

" Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

