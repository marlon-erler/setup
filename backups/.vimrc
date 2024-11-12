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
Plug 'wfxr/minimap.vim'
call plug#end()

function InstallCoc()
    :CocInstall coc-clangd
    :CocInstall coc-tsserver 
    :CocInstall coc-css
    :CocInstall coc-python
    :CocInstall coc-lua
    :CocInstall coc-r-lsp
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

"minimap
let g:minimap_width = 15
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

function SaveSession()
    wincmd =
    MinimapClose
    mksession!
    Minimap
    wincmd =
endfunction

function FixMinimap()
    MinimapClose
    Minimap
    wincmd =
endfunction

nnoremap <C-s> :call SaveSession()

"Init
autocmd VimEnter * call timer_start(5, { tid -> execute('call FixMinimap()')})

