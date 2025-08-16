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
Plug 'junegunn/seoul256.vim'
Plug 'rainglow/vim'
Plug 'flazz/vim-colorschemes'

" Utilidades
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/junegunn/vim-easy-align.git'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'

" Status/tabline
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0

" FZF (busca fuzzy)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Go development
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'rtp': 'vim' }

" Autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin não gerenciado (exemplo)
Plug '~/my-prototype-plugin'
call plug#end()

" ================== Configurações de Plugins ==================
filetype plugin on

" ================== Temas ==================
silent! colorscheme materialbox "seoul256

" ================== Comentários ==================
" Navegação entre buffers (desativado)
"nnoremap <M-Right> :bn<cr>
"nnoremap <M-Left> :bp<cr>
"nnoremap <c-x> :bp \|bd #<cr>

" Configuração do vim-fugitive (plugin Git)
" Comandos principais: :Gstatus, :Gcommit, :Gpush, etc.

" Configuração para o plugin de autocomplete (exemplo: coc.nvim)
"let g:coc_global_extensions = ['coc-json', 'coc-python']

" Adicionar mais comentários e melhorias abaixo caso necessário
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
Plug 'nsf/gocode', { 'rtp': 'vim' }

" On-demand loading: loaded when the specified command is executed
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" On-demand loading: loaded when a file with a specific file type is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"############################PLUGINS PESSOAIS#############

" Plugin startfy
Plug 'mhinz/vim-startify'

" Funções de comentário tão poderosas — nenhum comentário necessário.
Plug 'preservim/nerdcommenter'

" Vim airline Status/tabline enxuta e média para o vim que é leve como o ar.
"Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plugin de esquemas de cores 
Plug 'rainglow/vim'

" Tema de vim
Plug 'flazz/vim-colorschemes'

" Icones de vim
Plug 'ryanoasis/vim-devicons'

" Call plug#end to update &runtimepath and initialize the plugin system.
" - It automatically executes `filetype plugin indent on` and `syntax enable`
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" Color schemes should be loaded after plug#end().
" We prepend it with 'silent!' to ignore errors when it's not yet installed.
silent! colorscheme materialbox "seoul256
