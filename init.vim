call plug#begin('~/.config/nvim/plugged')
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

Plug 'ajmwagar/vim-deus'
"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins'  }
Plug 'vim-scripts/YankRing.vim'

Plug 'tpope/vim-surround'

Plug 'bling/vim-bufferline'

Plug 'pechorin/any-jump.vim'

Plug 'rking/ag.vim'

Plug 'mg979/vim-xtabline'

Plug 't9md/vim-choosewin'

Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/accelerated-jk'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

Plug 'mbbill/undotree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-repeat'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'   }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim' ", {'tag': 'v0.0.78'}"
Plug 'ervandew/supertab'

Plug 'terryma/vim-smooth-scroll'

Plug 'morhetz/gruvbox'
Plug 'majutsushi/tagbar'
Plug 'chiel92/vim-autoformat'

Plug 'airblade/vim-rooter'
call plug#end()
colors deus
"colorscheme gruvbox
"set nu

let mapleader=' '
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
vnoremap Y "+y
map - Nzz
map = nzz
nnoremap <leader>l d$
nnoremap <leader>h d0
noremap <leader>w :w<CR>
noremap <leader>q :q!<CR>
noremap <leader>d yyp
"noremap <leader>r
"noremap <leader>u
"noremap <leader>i
"noremap <leader>o
"noremap <leader>p
"
"noremap <leader>a
"noremap <leader>s
noremap gh <C-w>w
noremap gj <C-w>j
"noremap <leader>k
"
"noremap <leader>z
"noremap <leader>x
"noremap <leader>c
"noremap <leader>v
"noremap <leader>n
"noremap <leader>m
"noremap <leader>,
"noremap <leader>;
nnoremap <C-A> gg^vG$
nnoremap <C-s> :w<CR>
map <S-CR> $a<CR><ESC>
nnoremap < <<
nnoremap > >>

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

"============
"============ Plug 'mbbill/undotree'
"============
map <F5> :UndotreeToggle<CR>
set undodir=$HOME."/.undodir"
set undofile
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24

"============
"============  fzf
"============
noremap <silent> <C-h> :History<CR>
noremap <silent> <C-l> :Lines<CR>
"noremap <silent> bb :Buffers<CR>
let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

"let $FZF_DEFAULT_OPTS = '--bind !:up,@:down'
"============
"============  Plug 'xolox/vim-session'
"============
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:session_lock_enabled = 0
let g:session_autosave_to = 'default'
let g:session_directory='~/.config/nvim/sessions'
let SessionLoad = 1

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

let g:rainbow_active = 1
let g:rainbow_conf = {
			\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
			\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
			\   'operators': '_,_',
			\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
			\   'separately': {
			\       '*': {},
			\       'tex': {
			\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
			\       },
			\       'lisp': {
			\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
			\       },
			\       'vim': {
			\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
			\       },
			\       'html': {
			\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
			\       },
			\       'css': 0,
			\   }
			\}



set scrolloff=5
let g:airline_theme='light'
set autoread

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"============
"============ coc
"============
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"autocmd CursorHold * silent call CocActionAsync('highlight')

nmap tt :CocCommand explorer<CR>
nmap <leader>t <Plug>(coc-translator-p)
vmap <leader>t <Plug>(coc-translator-p)

"===========
"===========Plug 'terryma/vim-smooth-scroll'
"===========
noremap <C-f> :call smooth_scroll#down(&scroll*2, 8, 4)<CR>
noremap <C-d> :call smooth_scroll#up(&scroll*2, 8, 4)<CR>

"===========
"=========== Plug 'chiel92/vim-autoformat'
"===========
map <F4> :Autoformat<CR>

"===========
"=========== Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins'  }
"===========
"map <F3> :Defx -toggle -auto-cd -split=vertical -winwidth=30 -direction=topleft -session-file=/root/.config/nvim/defx_session<CR>



"============
"============ Plug 'airblade/vim-rooter'
"============
let g:rooter_change_directory_for_non_project_files = 'current'
let g:indentLine_enable = 1
let g:indentLine_char_list = ['|', '¦', '┆', '', '▏']


"============
"============ Plug 'Yggdroot/LeaderF'
"============
nnoremap bb :LeaderfBufferAll<CR>
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
nnoremap <S-u> :LeaderfBuffer<CR>
nnoremap <S-i> :LeaderfFile<CR>
"nnoremap <S-o> :LeaderfMru<CR>
"let g:Lf_CommandMap = {'<C-K>': ['<A-K>'], '<C-J>': ['<A-J>']}
set ambiwidth=double

"============
"============ Plug 'jiangmiao/auto-pairs'
"============
let g:AutoPairsFlyMode = 0
au Filetype xml let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}
au Filetype sql let b:AutoPairs = {'(':')',"'":"'",'"':'"'}
au Filetype text let b:AutoPairs = {}
let g:paste_easy_enable=1

"============
"============Plug 'pechorin/any-jump.vim'
"============
nnoremap <leader>j :AnyJump<CR>
let g:any_jump_window_width_ratio  = 0.8
let g:any_jump_window_height_ratio = 0.9

"============
"============Plug 'vim-scripts/YankRing.vim'
"============
let g:yankring_history_dir = '~/.config/nvim'
noremap <leader>y :YRShow<CR>

"============
"============Plug 't9md/vim-choosewin'
"============
nmap <leader>e <Plug>(choosewin)
exec "nohlsearch"
