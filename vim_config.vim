if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Get fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" Some sensible defaults
filetype plugin indent on
syntax enable
set nu
set autoread

" Incremental search without pressing ENTER
set incsearch
set hlsearch

" Keyboard shortcuts for fzf
nnoremap <S-t> :FZF<CR>
nnoremap <S-f> :Ag<CR>

" Tomorrow night
colorscheme Tomorrow-Night

" Set tab to only 2 spaces
set expandtab
set tabstop=2
set shiftwidth=2

" Remove whitespace
autocmd BufWritePre * %s/\s\+$//e

