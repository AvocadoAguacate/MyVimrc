syntax on

if has("autocmd")
	au BufReadPost * if line("'\'") > 1 && line("'\'") <= line("$") | exe "normal! g"
endif

set background=dark	
set number relativenumber

set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
filetype indent on

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

call plug#begin()
Plug 'jooize/vim-colemak'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'dracula/dracula-theme'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'tpope/vim-commentary'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

let mapleader = ","
map <leader>tc :tabclose<cr>	
map <leader>te :Texplore<cr>
map <leader>tt gt
map <leader>ts gT
map <leader>sh !!$SHELL<cr>
map cc gcc 
