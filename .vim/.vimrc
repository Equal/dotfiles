" Vundle Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/.vim/bundle/Vundle.vim
call vundle#begin('~/dotfiles/.vim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'ctrlpvim/ctrlp.vim' " provides fuzzy file finding
Plugin 'scrooloose/nerdcommenter' " provides shortcut to commenting out lines
Plugin 'sjl/gundo.vim' " provides a graphical UI for the undo tree https://sjl.bitbucket.io/gundo.vim/
Plugin 'tpope/vim-fugitive' " lets you integrate with git within files
Plugin 'vim-airline/vim-airline' " provides a status/tabline
Plugin 'vim-airline/vim-airline-themes' " themes for airline plugin

call vundle#end()            " required
filetype plugin indent on    " required

" Plugin Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo
" ,u will toggle the Gundo UI
nnoremap <leader>u :GundoToggle<CR>

" ctrlp.vim
let g:ctrlp_map = '<c-p>' " command to invoke CtrlP -> Ctrl + P
let g:ctrlp_cmd = 'CtrlP' " command to invoke CtrlP
let g:ctrlp_working_path_mode = 'ra' " use nearest ancestor with a source control directory as working directory
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.(git|hg|svn|dist)$|build|tmp|node_modules|bower_components',
    \ 'file': '\v\.(exe|so|dll|txt|vert|frag|swf|png|jpg|gif|otf|wotf|eot|svg|ttf|pem|patch|pickle|psd|xpi|xrf|xsf|xsl|zip|tga|swp|swo|hi|o|p_o|p_hi)$'
    \ }

" nerdcommenter
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters

" vim-airline
let g:airline_theme='deus' " Set the theme for airline. Alternatives: https://github.com/vim-airline/vim-airline/wiki/Screenshots

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

" Miscellaneous
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup " don't create .swo files
set noswapfile " don't create .swp
set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.swo,*.ho,*.hi,*.beam "ignore compiled files

nnoremap <C-h> :bprevious<cr>
nnoremap <C-l> :bnext<cr>
nnoremap <leader>q :bp\|bd #<cr>

nnoremap <leader>jc Oconsole.log('<C-R>=expand("%:t")<cr>:<C-R>=line('.')<cr>');<Esc>
