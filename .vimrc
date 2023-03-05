syntax on

set background=dark	
set number relativenumber

set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

" filetype on
filetype plugin on
filetype indent on

" Configuración manual de extensiones
" au BufNewFile,BufRead * :filetype detect
au BufNewFile,BufRead *.js set filetype=javascript
au BufNewFile,BufRead *.test.js set filetype=testjavascript
au BufNewFile,BufRead *.jsx set filetype=javascriptreact
au BufNewFile,BufRead *.tsx set filetype=typescriptreact
au BufNewFile,BufRead *.css set filetype=css

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:vim_jsx_pretty_colorful_config = 1 

call plug#begin()
Plug 'jooize/vim-colemak'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'preservim/nerdtree'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

colorscheme dracula

let mapleader = ","
" movimientos
" media pantalla
map N <C-d>
map E <C-u>
" Guardar y salir
map <leader>q :q<cr> 
map <leader>w :w<cr> 
map <leader>wq :wq<cr>
" NERDTree
map <leader>nt :NERDTreeToggle<cr>
map <C-h> <C-W>j
map <C-i> <C-W>k
map <C-n> <C-W>h
map <C-e> <C-W>l
" regular tamano
map <leader>m <C-w><
map <leader>mm <C-w><<C-w><
map <leader>mmm <C-w><<C-w><<C-w><
map <leader>. <C-w>>
map <leader>.. <C-w>><C-w>>
map <leader>... <C-w>><C-w>><C-w>>
" Insertar la linea actual al terminal y el resultado al archivo
map <leader>sh !!$SHELL<cr>
" Comments
map cc gcc 
