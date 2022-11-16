set mouse=a

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/plugged')

" Declare the list of plugins.
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/switch.vim'
Plug 'benekastah/neomake'
Plug 'Raimondi/delimitMate'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'arcticicestudio/nord-vim'
Plug 'mhinz/vim-startify'
Plug 'hugolgst/vimsence'
Plug 'scrooloose/nerdtree'
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()
let mapleader = " "

" Colorscheme
colorscheme nord

"Vim options
set backupdir=$XDG_CACHE_HOME/vim/backup
set termguicolors
set number relativenumber
set autoread
set smartcase
set scrolloff=5
set sidescrolloff=5
set titlestring=%f%m
set title
set nobackup
set nowritebackup
set noswapfile
set noshowmode

" Plugin options
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:switch_mapping = "<leader>s"
let NERDTreeShowHidden = 1
let g:NERDTreeWinPos = "right"
let NERDTreeIgnore = ['\~$', '\.swo$', '\.swp$', '\.git$', '\.hg', '\.svn', '\.bzr', '\.settings', '\.project', '\.DS_Store', '^node_modules$']
let g:lightline = {'colorscheme': 'nord'}
let g:coc_global_extensions = ['coc-snippets', 'coc-pairs', 'coc-tsserver', 'coc-eslint', 'coc-json']
let g:airline_powerline_fonts = 1

" remaps
nnoremap <F2> :NERDTreeToggle<CR>

" use system clipboard
if has('unnamedplus')
    set clipboard=unnamedplus
else
    set clipboard=unnamed
endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
