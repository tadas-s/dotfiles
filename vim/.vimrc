set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.local/share/vim/bundle/Vundle.vim
call vundle#begin('~/.local/share/vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'hewo/vim-colorscheme-deepsea'
"Plugin 'dag/vim2hs'
Plugin 'rust-lang/rust.vim'
" Plugin 'elixir-lang/vim-elixir'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ekalinin/Dockerfile.vim'

" Plugin 'wikitopian/hardmode' " one day, but not today...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set number
set laststatus=2
set backspace=indent,eol,start
set tabstop=2
set nowrap
set colorcolumn=80,120

set autoindent
filetype plugin indent on " Enable filetype-specific indenting and plugins
syntax on

set cursorline          " highlight current line

" jk to leave insert mode
inoremap jk <ESC>

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END

" Airline config
let g:airline_theme='luna'

" Force to use underline for spell check results
augroup SpellUnderline
  autocmd!
  autocmd ColorScheme *
        \ highlight SpellBad
        \ cterm=Underline
augroup END

" Color theme
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
syntax enable
set background=dark
colorscheme solarized

" Markdown plugin config
let g:vim_markdown_folding_disabled = 1

" gitcommit type settings
au FileType gitcommit set tw=80
au FileType gitcommit set spell

" ... fat fingers fix
command! Wq wq

