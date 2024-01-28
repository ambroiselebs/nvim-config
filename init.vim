" Configuration des options d'indentation
set number
set shiftwidth=4
set tabstop=4

" Configuration des plugins avec vim-plug
call plug#begin()

Plug 'rstacruz/vim-closer'
Plug 'tc50cal/vim-terminal'
Plug 'jiangmiao/auto-pairs'
Plug 'xiyaowong/transparent.nvim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vimlab/split-term.vim'

call plug#end()

" Options de division (splitting)
set splitbelow

" Utiliser <Tab> pour déclencher la complétion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Mappages pour utiliser les flèches dans le mode insert
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"

" Mappage pour utiliser la touche Entrée pour l'insertion des propositions
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" Déclencheur des suggestions d'autocomplétion avec <C-Space>
inoremap <silent><expr> <C-Space> coc#refresh()

" Configuration pour coc.nvim
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-highlight',
  \ 'coc-pairs',
  \ 'coc-vimlsp',
  \ 'coc-git',
  \ 'coc-clangd',
  \ ]

augroup my_coc_settings
  autocmd!
  autocmd FileType c,cpp inoremap <buffer> <C-Space> <Plug>(coc-snippets-expand)
augroup END
