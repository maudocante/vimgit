" ================== Opções Gerais ==================
" Definir tecla <leader> como vírgula
let mapleader = ","

set mouse=a                  " Permitir uso do mouse no Vim
set number                   " Mostrar números das linhas
set relativenumber           " Mostrar números relativos
set history=5000             " Aumentar o histórico de comandos para 5000 entradas
set clipboard=unnamedplus    " Compartilhar o clipboard do sistema
set encoding=UTF-8           " Definir codificação como UTF-8
set cursorline               " Destacar a linha do cursor
set incsearch
set confirm
set wildmenu
set wildoptions=pum

" Fonte usada pelo Vim
set guifont=DroidSansM\ Nerd\ Font\ Mono:h12

" Alternar entre relativenumber e number com F2
nnoremap <F2> :set relativenumber!<CR>:set number<CR>

" ================== Atalhos ==================
" Ativar/Desativar IndentLine
let g:IndentLine_enabled = 1
map <c-k>i :IndentLinesToggle<cr>
map <c-n> :NERDTreeToggle<cr>
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert

" ================== Mapeamentos de Teclado Úteis ==================
" Salvar rapidamente
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
vnoremap <C-s> <Esc>:w<CR>gv

" Fechar buffer/arquivo
nnoremap <C-q> :bd<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :qa!<CR>

" Navegação entre buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Navegação entre splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Redimensionar splits
nnoremap <C-Up>    :resize +2<CR>
nnoremap <C-Down>  :resize -2<CR>
nnoremap <C-Left>  :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" Abrir/fechar splits
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>

" Manipulação de abas
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tn :tabnext<CR>

" Limpar busca
nnoremap <leader><space> :nohlsearch<CR>

" Mapeamento fácil para <Esc> no modo de inserção
inoremap jk <Esc>

" ================== Plugins ==================
call plug#begin()
" Temas e cores
" Tema de cores minimalista inspirado em Seoul
Plug 'junegunn/seoul256.vim'
" Coleção de esquemas de cores para Vim
Plug 'rainglow/vim'
" Vários esquemas de cores para Vim
Plug 'flazz/vim-colorschemes'

" Utilidades
" Inserção automática de pares de parênteses, colchetes, etc.
Plug 'jiangmiao/auto-pairs'
" Alinhamento fácil de texto baseado em delimitadores
Plug 'https://github.com/junegunn/vim-easy-align.git'
" Tela inicial personalizável para o Vim
Plug 'mhinz/vim-startify'
" Navegador de arquivos em árvore
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" Comentar/descomentar código facilmente
Plug 'preservim/nerdcommenter'
" Ícones para arquivos e pastas no Vim
Plug 'ryanoasis/vim-devicons'

" Status/tabline
" Temas para o plugin vim-airline (barra de status/tabline)
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0

" FZF (busca fuzzy)
" Ferramenta de fuzzy finder (busca rápida de arquivos e comandos)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Instalação do FZF via função do plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Go development
" Ferramentas para desenvolvimento em Go
Plug 'fatih/vim-go', { 'tag': '*' }
" Autocompletar para Go
Plug 'nsf/gocode', { 'rtp': 'vim' }

" Autocomplete
" Autocompletar inteligente para múltiplas linguagens
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Clojure
" Integração REPL para Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin não gerenciado (exemplo)
" Exemplo de plugin local não gerenciado pelo Plug
Plug '~/my-prototype-plugin'
call plug#end()

" ================== Configurações de Plugins ==================
filetype plugin on

" ================== Temas ==================
silent! colorscheme materialbox "seoul256

