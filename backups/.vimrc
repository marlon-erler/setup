"Theme
set number
syntax on
colorscheme zellner

"Indent
set shiftwidth=4
set smarttab

"Other
set mouse=a
set updatetime=500
set signcolumn=yes
set encoding=utf-8
set fileencoding=utf-8

"Syntax
hi MatchParen cterm=underline ctermbg=none ctermfg=blue

"Install
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()

function InstallCoc()
    CocInstall coc-clangd
    CocInstall coc-tsserver 
    CocInstall coc-css
    CocInstall coc-python
    CocInstall coc-lua
    CocInstall coc-r-lsp
endfunction

"Configuration
"nerdtree 
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree | wincmd p

"coc
nmap <leader>rn <Plug>(coc-rename)

function SaveSession()
    wincmd =
    mksession!
endfunction

nnoremap <C-s> :call SaveSession()

autocmd VimEnter * wincmd =
