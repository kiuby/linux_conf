" ---------------------------------------------------------------------------
" ------------      BEGIN OF VUNDLE PLUGIN      -----------------------------
" ---------------------------------------------------------------------------
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" https://github.com/gmarik/Vundle.vim
Plugin 'gmarik/Vundle.vim'

" autocompletion plugin
" https://github.com/Valloric/YouCompleteMe 
" http://valloric.github.io/YouCompleteMe/
Plugin 'Valloric/YouCompleteMe'

" syntax plugin 
" https://github.com/scrooloose/syntastic
Plugin 'scrooloose/syntastic'

" just an awesome status bar
" https://github.com/bling/vim-airline
Plugin 'bling/vim-airline'

" snippet engine
" https://github.com/SirVer/ultisnips
" Plugin 'SirVer/ultisnips'
"
" Snippets are separated from the engine. python snippets
" https://github.com/honza/vim-snippets
" Plugin 'honza/vim-snippets'

" ctrl p plugin
" https://github.com/kien/ctrlp.vim
" Plugin 'kien/ctrlp'

" nerd comment
" https://github.com/scrooloose/nerdcommenter
" Plugin 'scrooloose/nerdcommenter'

" surrounding vim
" https://github.com/tpope/vim-surround
" Plugin 'tpope/vim-surround'

" json plugin, because all json is js, but not all js is json
" https://github.com/elzr/vim-json
Plugin 'elzr/vim-json'

" tabular plugins, need by markdown
" https://github.com/godlygeek/tabular
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
Plugin 'godlygeek/tabular'

" markdown syntax highlighting, matching rules and mappings
" https://github.com/plasticboy/vim-markdown
Plugin 'plasticboy/vim-markdown'

" some colorschems, just amazing 
Plugin 'flazz/vim-colorschemes'

" get a better indent, 
Plugin 'Yggdroot/indentLine'

" filebrowser bar plugin
" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'

" tagbar plugin
" https://github.com/majutsushi/tagbar
Plugin 'majutsushi/tagbar'

" INDENTATION 
" https://github.com/klen/python-mode
" https://github.com/gmarik/vimfiles
" https://github.com/zaiste/vimified
" snipper, if else, ...
" https://github.com/fisadev/fisa-vim-config
" https://github.com/timss/vimconf/blob/master/.vimrc
" https://github.com/liangxianzhe/oh-my-vim
" https://github.com/tpope/vim-fugitive
" https://github.com/tpope/vim-haystack
" https://github.com/tpope/vim-sleuth
" https://github.com/vim-scripts/a.vim

" one day
" 
" minimalist, versatile Vim motion plugin that jumps to any location specified
" by two characters
" https://github.com/justinmk/vim-sneak
" Plugin 'justinmk/vim-sneak'

" configure % to match more than just single characters
" https://github.com/edsono/vim-matchit
" Plugin 'edsono/vim-matchit'

" git plugin
" https://github.com/tpope/vim-fugitive
" Plugin 'tpope/vim-fugitive'

" git diff directly from column lines on vim
" https://github.com/airblade/vim-gitgutter
" Plugin 'airblade/vim-gitgutter'

" asynchronous build and test dispatcher 
" https://github.com/tpope/vim-dispatch
" Plugin 'tpope/vim-dispatch'

" mercurial plugin
" https://bitbucket.org/ludovicchabant/vim-lawrencium
" Plugin 'ludovicchabant/vim-lawrencium'

" show update from VCS into vim (use vim-gitgutter if only need git)
" https://github.com/mhinz/vim-signify
" Plugin 'mhinz/vim-signify'

" graphical undo visu into vim
" https://github.com/sjl/gundo
" Plugin 'sjl/gundo'

" Bundle 'altercation/vim-colors-solarized'
" Plugin 'nathanaelkane/vim-indent-guides'"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" pour toi simon, il est 00h30, et je te push enfin ma conf, qui n'est pas
" encore fini, mais est deja pas mal
" installation : 
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
" Vim 7.3.584 with python2
"cd ~/.vim/bundle/YouCompleteMe
"./install.sh --clang-completer
"
" ---------------------------------------------------------------------------
" ------------      END OF VUNDLE PLUGIN      -------------------------------
" ---------------------------------------------------------------------------

" XXX: must include this file, later i think ...
    if filereadable("$HOME/.vimrc.grml")
        source $HOME/.vimrc.grml
    endif

" ---------------------------------------------------------------------------
" ------------      BEGIN OF PIMP MY PLUGIN     -----------------------------
" ---------------------------------------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic tunning
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For full documentation, see
" http://powerman.name/download/vim/latest.vim/bundle/syntastic/doc/syntastic.txt

" default status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Use this option to tell syntastic to automatically open and/or close the
" |location list|
" When set to 1 the error window will be automatically opened when errors are
" detected, and closed when none are detected. Default 2
let g:syntastic_auto_loc_list = 1

" Enable this option to tell syntastic to always stick any detected errors
" into the |location-list| Default 0
let g:syntastic_always_populate_loc_list=1

" When set to 1 the cursor will always jump to the first issue detected.
" Default 0
let g:syntastic_auto_jump = 1

" If enabled, syntastic will do syntax checks when buffers are first loaded as
" well as on saving. Default 0 
let g:syntastic_check_on_open = 1

" Normally syntastic runs syntax checks whenever buffers are written to disk.
" Default 1
let g:syntastic_check_on_wq = 0

" Use this option to specify the height of the location lists that syntastic 
" opens. Default 10
let g:syntastic_loc_list_height = 5

""Sytanstic Error Signs"
let g:syntastic_enable_signs=1

" syntax 
let g:syntastic_error_symbol='✘' " '✗'
let g:syntastic_warning_symbol='⚠'

" style 
let g:syntastic_style_error_symbol='e' " '✗'
let g:syntastic_style_warning_symbol='w'

" enable multiple checkers 
let g:syntastic_aggregate_errors = 1

" python syntastic config
let g:syntastic_python_python_exec = '/usr/bin/python2.7'
let g:syntastic_python_checkers = 
\ ['pylint', 'flake8', 'python']
"\ ['pylint', 'flake8', 'pyflakes', 'pep8', 'python']
let g:syntastic_enable_python_checker = 1

" perl syntastic config 
let g:syntastic_perl_checkers = ['perl']
let g:syntastic_enable_perl_checker = 1


" ---------------------------------------------------------------------------
" ------------      END OF PIMP MY PLUGIN       -----------------------------
" ---------------------------------------------------------------------------


" ---------------------------------------------------------------------------
" ------------      BEGIN OF PIMP MY VIM        -----------------------------
" ---------------------------------------------------------------------------

"
"" TUN MY CONF
" hides buffers instead of closing them
"  you can have unwritten changes to a file and open a new file using :e,
"  without being forced to write or undo your changes first. Also, undo
"  buffers and marks are preserved while the buffer is open
set hidden

"
filetype on
syntax enable           " enable syntax processing
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set smartindent
set shiftwidth=4

set number              " show line numbers
set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu


" <F2> : tree directory on the left, same for close
map <F2> :NERDTreeToggle<CR>

" <F3> : tag bar on the right, same for close
nmap <F3> :TagbarToggle<CR>

" for arch : 
" pip install pyflakes pep8 pyflakes
" mv /usr/bin/pyflakes /usr/bin/python3-pyflakes
" ln -s /usr/bin/pyflakes-python2 /usr/bin/pyflakes
" mv /usr/bin/flake8 /usr/bin/flake8-python3
" ln -s /usr/bin/flake8-python2 /usr/bin/flake8
" mv /usr/bin/pep8 /usr/bin/pep8-python3
"  ln -s /usr/bin/pep8-python2 /usr/bin/pep8

" ####
" ## Colorscheme
" ###
set background=dark
colorscheme molokai
" colorscheme solarized
"
" match the original monokai background color
let g:molokai_original = 1  

" attempts to bring the 256 color version as 
" close as possible to the the default (dark) GUI version
let g:rehash256 = 1         


filetype plugin indent on

" column 
" set cursorline cursorcolumn
set cursorline 
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.*/


" Only with Syntastic plugin :
" highligh Syntastic depending on kind of error 
highlight SyntasticError ctermfg=red
highlight SyntasticErrorLine ctermfg=red
highlight SyntasticErrorSign ctermfg=red

highlight SyntasticStyleError ctermfg=red
highlight SyntasticStyleErrorLine ctermfg=red
highlight SyntasticStyleErrorSign ctermfg=red

highlight SyntasticWarning ctermfg=166
highlight SyntasticWarningLine ctermfg=166
highlight SyntasticWarningSign ctermfg=166

highlight SyntasticStyleWarning ctermfg=166
highlight SyntasticStyleWarningLine ctermfg=166
highlight SyntasticStyleWarningSign ctermfg=166

" Column sign bg for Syntastic
hi SignColumn ctermbg=232


"set colorcolumn=80 
"highlight ColorColumn ctermbg=1

set list
set listchars=tab:▸\ ,eol:¬,trail:·,extends:.,precedes:.
"set listchars=eol:¬,trail:·,tab:▸-,trail:▸,extends:▸,precedes:▸
let g:indentLine_color_term = 239
let g:indentLine_char = '▸'

let g:ycm_autoclose_preview_window_after_completion = 1

"let g:indent_guides_enable_on_vim_startup = 1
"set ts=1 sw=1
"let g:indent_guides_color_change_percent = 80
"let g:indent_guides_auto_colors = 0
""let g:indent_guides_start_level = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=102
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  


