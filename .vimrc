set number 
syntax on 


set hlsearch
set incsearch

set ts=4
set autoindent
set shiftwidth=4 
set cinoptions=1 



" flod when open a file 
set fdm=indent
" fold is canceled when open a file 
set foldlevel=1
set foldlevelstart=99


let mapleader = ','
inoremap jj <Esc>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-surround'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


Plug 'brooth/far.vim'
Plug 'lfv89/vim-interestingwords'

Plug 'majutsushi/tagbar'
Plug 'ycm-core/YouCompleteMe'

Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pair'
call plug#end()

colorscheme hybrid
set background=dark

highlight LineNr ctermfg=darkblue 

nmap ss <Plug>(easymotion-s2)

nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

let g:ctrlp_map= '<c-p>'

nnoremap <leader>t :TagbarToggle<cr>

" -----ycm begin--
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone


let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
"-----ycm end--
