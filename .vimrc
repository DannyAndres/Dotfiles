
"___Vim-Plug List___

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'posva/vim-vue'
Plug 'chriskempson/base16-vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'jwalton512/vim-blade'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html', 'vue'] }
call plug#end()

"___Vim-Plugin List___

autocmd BufWritePre *.js Neoformat
autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat
autocmd FileType javascript setlocal formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ es5
" Use formatprg when available
let g:neoformat_try_formatprg = 1

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'alvan/vim-closetag'
call vundle#end()
" I don't know what this line do yet but in the website it says that was
" required LOL
filetype plugin indent on

" ___Vim General Configuration___

" This delete the .swp file of vim, not the best but is kinda annoying
set noswapfile

"set nocompatible                                             " don't bother with vi compatibility
"set autoindent
"set hidden                                                   " enable switch buffer without saving
"set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
"set backupcopy=yes                                           " see :help crontab
"set clipboard=unnamed                                        " yank and paste with the system clipboard
"set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
"set expandtab                                                " expand tabs to spaces
"set ignorecase                                               " case-insensitive search
"set incsearch                                                " search as you type
"set laststatus=2                                             " always show statusline
"set list                                                     " show trailing whitespace
"set listchars=tab:▸\ ,trail:▫
set number relativenumber                                                  " show line numbers
set ruler                                                    " show where you are
"set scrolloff=3                                              " show context above/below cursorline
"set shiftwidth=2                                             " normal mode indentation commands use 4 spaces
"set showcmd
"set smartcase                                                " case-sensitive search if any caps
"set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
"set tabstop=8                                                " actual tabs occupy 8 characters
"set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
"set wildmenu                                                 " show a navigable menu for tab completion
"set wildmode=longest,list,full
"set hlsearch
"set incsearch
"set mouse=a                                                  " Enable basic mouse behavior such as resizing buffers.
"set nocursorline                                             " don't highlight current line

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" ___Visuals___

set linespace=15
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=R
set termguicolors
syntax enable
let base16colorspace=256
let g:dracula_italic = 0
colorscheme dracula
"highlight Normal ctermbg=None
"set background=dark
"highlight Normal guibg=black
hi Normal guibg=NONE ctermbg=NONE

" ___Keyboard Mappings____

"let mapleader = ','
"noremap ,ev :tabedit $MYVIMRC<cr>
"noremap <leader><space> :nohlsearch<cr>
"noremap <C-h> <C-w>h
"noremap <C-j> <C-w>j
"noremap <C-k> <C-w>k
"noremap <C-l> <C-w>l
"inoremap jj <ESC>
"noremap <D-s> :w
"noremap <leader>n :bnext<CR>
"noremap <leader>p :bprevious<CR>
"noremap <leader>l :Align
"nnoremap <leader>a :Ag<space>
"nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <C-c> :NERDTreeToggle<CR>
"nnoremap <leader>f :NERDTreeFind<CR>
"nnoremap <leader>t :CtrlP<CR>
"nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
"nnoremap <leader>] :TagbarToggle<CR>
"nnoremap <leader>g :GitGutterToggle<CR>
""noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
"nnoremap <Left> :vertical resize -5<CR>
"nnoremap <Right> :vertical resize +5<CR>
"nnoremap <Up> :resize -5<CR>
"nnoremap <Down> :resize +5<CR>
"cnoremap w!! %!sudo tee > /dev/null %
"nmap  :setlocal spell spelllang=es_es<cr>
"nmap  :setlocal spell spelllang=en_en<cr>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" __Auto Indent Settings
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.blade.php"
autocmd Filetype php setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.blade.php set ft=blade
autocmd BufWritePost .vimrc source %

" ___Plugins Settings___

"__NerdTree
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0
let g:NERDTreeWinSize=40
" Abre automaticamente el arbol al abrir un archivo
""autocmd vimenter * NERDTree
" abre otras carpetas y archivos pero en una nueva ventana
"let NERDTreeMapOpenInTab='<ENTER>'

"__Airline

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

"__Vim-Vue

autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

"__NerdCommenter

"let g:ft = ''
"function! NERDCommenter_before()
"  if &ft == 'vue'
"    let g:ft = 'vue'
"    let stack = synstack(line('.'), col('.'))
"    if len(stack) > 0
"      let syn = synIDattr((stack)[0], 'name')
"     if len(syn) > 0
"        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
"      endif
"    endif
"  endif
"endfunction
"function! NERDCommenter_after()
"  if g:ft == 'vue'
"    setf vue
"    let g:ft = ''
" endif
"endfunction

"__Vim-Prettier__

autocmd FileType javascript set formatprg=prettier-eslint\ --stdin
""autocmd BufNewFile,BufReadPost *.vue setfiletype vue

"__Vim-Blade__

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

"" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }


function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

 "let g:vue_disable_pre_processors=1
  "autocmd FileType vue syntax sync fromstart
  ""autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.less.pug

" Vue syntax highligting
autocmd BufNewFile,BufRead *.vue set ft=vue
