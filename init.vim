call plug#begin('~/.config/nvim/plugged')

    Plug 'Yggdroot/indentLine'
    Plug 'benmills/vimux'
    Plug 'terryma/vim-multiple-cursors' 
    Plug 'honza/vim-snippets'
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdtree'
	  Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mattn/emmet-vim'
	  Plug 'nikvdp/ejs-syntax'
    Plug 'SirVer/ultisnips'
    Plug 'sheerun/vim-polyglot'
    Plug 'Valloric/YouCompleteMe'
    Plug 'jiangmiao/auto-pairs'
    Plug 'Lokaltog/vim-powerline'
    Plug 'plytophogy/vim-virtualenv'
    Plug 'StanAngeloff/php.vim'
    Plug 'w0rp/ale'

call plug#end()

syntax on
syntax enable
set background=dark
colorscheme gruvbox

set ts=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hidden
set noswapfile
set number
set clipboard+=unnamedplus

" NERTree
map <C-\> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
let g:NERDTreeWinSize=20

" Vim-airline
let g:airline#extensions#tabline#enabled = 1

" My confis
let mapleader="\<space>"
nnoremap <leader>ss :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>rr :so $MYVIMRC<cr>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <C-d> :bprev<CR>
nnoremap <C-f> :bnext<CR>
nnoremap <C-q> :q! <CR>

"Tmux
nnoremap <leader>, :call VimuxOpenRunner()<cr>
nnoremap <leader>. :call VimuxCloseRunner()<cr>
let g:VimuxOrientation = "h"
let g:VimuxHeight = "50"


" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,php,jst EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" Auto-pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Ale
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}

" identLine

