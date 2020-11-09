source ~/.config/nvim/config/baseKeyMap.vim

call plug#begin('~/.config/nvim/plugged')
"保存关闭时vim状态
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
"自动补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"沉浸式阅读
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

"git
Plug 'airblade/vim-gitgutter'
"主题
Plug 'ajmwagar/vim-deus'
"剪贴板历史
Plug 'vim-scripts/YankRing.vim'
"
Plug 'tpope/vim-surround'
" buffer样式
"Plug 'bling/vim-bufferline'

Plug 'rking/ag.vim'

" 多窗口时可以选择窗口
Plug 't9md/vim-choosewin'
" 快速跳转
Plug 'easymotion/vim-easymotion'
"状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"加快j k 速度
Plug 'rhysd/accelerated-jk'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'mbbill/undotree'
"显示空白符颜色
Plug 'ntpeters/vim-better-whitespace'
"增强 . 的功能
Plug 'tpope/vim-repeat'
"彩色括号
Plug 'luochen1990/rainbow'
"自动括号
Plug 'jiangmiao/auto-pairs'
"搜索文件名称
Plug 'junegunn/fzf', { 'dir': '~/.fzf','do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"增强tab
Plug 'ervandew/supertab'
"增强 Crtl+d Crtl+f
Plug 'terryma/vim-smooth-scroll'

Plug 'morhetz/gruvbox'
"显示文件结构
Plug 'majutsushi/tagbar'
"格式化
Plug 'chiel92/vim-autoformat'
"切换vim工作目录
Plug 'airblade/vim-rooter'
"显示缩进虚线
Plug 'Yggdroot/indentLine'
"切换tab
Plug 'ap/vim-buftabline'
"高亮光标下所有的单词
Plug 'RRethy/vim-illuminate'
"相同单词多光标
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"搜索替换
Plug 'brooth/far.vim'
"切换缓冲区
Plug 'bsdelf/bufferhint'

call plug#end()


colors deus

"============
"============ Plug 'rhysd/accelerated-jk'
"============
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

"============
"============ Plug 'mbbill/undotree'
"============
map <F1> :UndotreeToggle<CR>
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
noremap <silent> <C-l> :Lines<CR>
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

"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)

"============
"============ Plug 'luochen1990/rainbow'
"============
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

"============
"============ Plug 'vim-airline/vim-airline'
"============Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#whitespace#enabled = 0
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif

"===========
"===========Plug 'terryma/vim-smooth-scroll'
"===========
noremap <C-f> :call smooth_scroll#down(&scroll*2, 8, 4)<CR>
noremap <C-d> :call smooth_scroll#up(&scroll*2, 8, 4)<CR>

"===========
"=========== Plug 'chiel92/vim-autoformat'
"===========
map <F4> :Autoformat<CR>

"============
"============ Plug 'airblade/vim-rooter'
"============
let g:rooter_change_directory_for_non_project_files = 'current'
let g:indentLine_enable = 1
let g:indentLine_char_list = ['|', '¦', '┆', '', '▏']


"============
"============ Plug 'Yggdroot/LeaderF'
"============
"nnoremap bb :LeaderfBufferAll<CR>
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
nnoremap <S-u> :LeaderfBuffer<CR>
nnoremap <S-i> :LeaderfFile<CR>
nnoremap <S-o> :LeaderfMru<CR>
"let g:Lf_CommandMap = {'<C-K>': ['<A-K>'], '<C-J>': ['<A-J>']}
set ambiwidth=double

"============
"============ Plug 'jiangmiao/auto-pairs'
"============
let g:AutoPairsFlyMode = 0
au Filetype xml let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}
au Filetype sql let b:AutoPairs = {'(':')',"'":"'",'"':'"'}
au Filetype text let b:AutoPairs = {}
au Filetype json let b:AutoPairs = {'{':'}'}
let g:paste_easy_enable=1


"============
"============Plug 'vim-scripts/YankRing.vim'
"============
let g:yankring_history_dir = '~/.config/nvim'
noremap <leader>y :YRShow<CR>

"============
"============Plug 't9md/vim-choosewin'
"============
nmap <leader>e <Plug>(choosewin)
let g:choosewin_overlay_enable = 1
let g:choosewin_color_overlay = {
            \ 'gui': ['DodgerBlue3', 'DodgerBlue3'],
            \ 'cterm': [25, 25]
            \ }
let g:choosewin_color_overlay_current = {
            \ 'gui': ['firebrick1', 'firebrick1'],
            \ 'cterm': [124, 124]
            \ }
let g:choosewin_blink_on_land      = 0 " don't blink at land
let g:choosewin_statusline_replace = 0 " don't replace statusline
let g:choosewin_tabline_replace    = 0 " don't replace tabline

noremap <F11> :Goyo<CR>
nmap <F12> <Plug>(Limelight)
let g:limelight_conceal_ctermfg = 'gray'

"============
"============Plug 'Yggdroot/indentLine'
"============
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

"============
"============Plug 'ap/vim-buftabline'
"============
set hidden
nnoremap <tab> :bnext<CR>

"============
"============Plug 'RRethy/vim-illuminate'
"============
let g:Illuminate_ftwhitelist = ['vim', 'sh', 'python','java','text','txt','go']
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0


"============
"============Plug 'bsdelf/bufferhint'
"============
let g:bufferhint_SortMode = 1
nnoremap <leader><tab> :call bufferhint#Popup()<CR>

source ~/.config/nvim/config/coc.vim
