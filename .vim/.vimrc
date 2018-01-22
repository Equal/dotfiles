let mapleader = "," " set , as leader

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
Plugin 'mileszs/ack.vim' " provides grep functionality via `ag`
Plugin 'scrooloose/nerdcommenter' " provides shortcut to commenting out lines
Plugin 'sjl/gundo.vim' " provides a graphical UI for the undo tree https://sjl.bitbucket.io/gundo.vim/
Plugin 'tpope/vim-fugitive' " lets you integrate with git within files
Plugin 'vim-airline/vim-airline' " provides a status/tabline
Plugin 'vim-airline/vim-airline-themes' " themes for airline plugin
Plugin 'w0rp/ale' " Async lint evaluator plugin, replaces syntastic
Plugin 'airblade/vim-gitgutter' " plugin to show dots signifying git diff changes
Plugin 'qpkorr/vim-bufkill' " plugin to kill buffers without closing the window
Plugin 'embear/vim-localvimrc' " plugin to load local vimrc files per repo
Plugin 'leafgarland/typescript-vim' "plugin to load syntax for typescript
Plugin 'tpope/vim-surround' " plugin to make changes to surrounding characters
Plugin 'easymotion/vim-easymotion' " plugin to provide easy motion in vim

call vundle#end()            " required
filetype plugin indent on    " required

" Plugin Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp.vim
let g:ctrlp_map = '<c-p>' " command to invoke CtrlP -> Ctrl + P
let g:ctrlp_cmd = 'CtrlP' " command to invoke CtrlP
let g:ctrlp_working_path_mode = 'ra' " use nearest ancestor with a source control directory as working directory
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.(git|hg|svn|dist)$|build|tmp|node_modules|bower_components',
    \ 'file': '\v\.(exe|so|dll|txt|vert|frag|swf|png|jpg|gif|otf|wotf|eot|svg|ttf|pem|patch|pickle|psd|xpi|xrf|xsf|xsl|zip|tga|swp|swo|hi|o|p_o|p_hi)$'
    \ }
" ; brings up ctrlp in buffer mode
nnoremap ; :CtrlPBuffer<CR>

" gundo.vim
" ,u will toggle the Gundo UI
nnoremap <leader>u :GundoToggle<CR>

" nerdcommenter
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters

" vim-airline
let g:airline_theme='powerlineish' " Set the theme for airline. Alternatives: https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline#extensions#tabline#enabled = 1 " show buffers in tabline when only one tab is being used
let g:airline#extensions#tabline#formatter = 'unique_tail' " filename display format
let g:airline_section_b = '' " hide branch info in status line
let g:airline_section_x = '' " hide filetype info in status line
let g:airline_section_y = '' " hide file encoding info in status line

" ack.vim
" use `ag` for searching if available
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif
" ,a to grep
nnoremap <leader>a :Ack!<Space>

"vim-localvimrc
let g:localvimrc_persistent = 2 " Store decisions made about using local vimrc files

" VIM UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable " enable syntax processing
set background=dark " dark background theme
colorscheme solarized " Solarized!

set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2 " number of spaces shifted with >> and <<
set expandtab " convert tabs to spaces
set ai " automatically indent

set number " show line numbers
set showcmd " show command in bottom bar
set ruler " show cursor position in bottom right
set cursorline " highlight line with current cursor position
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when needed (better perf. during macros)
set showmatch " highlight matching [{()}]
set title " show the filename
" show trailing spaces and tabs
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" VIM Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase " searches are case insensitive
set smartcase " searches are case sensitive if an uppercase character is included
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
set backspace=2 " make backspace delete over indents / eol, like most programs
set nobackup " don't create .swo files
set noswapfile " don't create .swp
set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.swo,*.ho,*.hi,*.beam "ignore compiled files

" traverse buffers using Ctrl+h and Ctrl+l
nnoremap <C-h> :bprevious<cr>
nnoremap <C-l> :bnext<cr>
" delete a buffer with ,q
nnoremap <leader>q :BD<cr>

" add `console.log(file:line);` at line with ,jc
nnoremap <leader>jc Oconsole.log('<C-R>=expand("%:t")<cr>:<C-R>=line('.')<cr>');<Esc>
