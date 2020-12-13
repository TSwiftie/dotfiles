set nocompatible
filetype off
call plug#begin(stdpath('data').'/plugged')
"主题
Plug 'dracula/vim',{'as':'dracula'}
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
"状态栏和主题
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
""静态代码分析
Plug 'dense-analysis/ale'
"彩虹括号"
Plug 'luochen1990/rainbow'
"目录树"
Plug 'scrooloose/nerdtree' 
"批量注释"
Plug 'scrooloose/nerdcommenter' 
"补全插件"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"浮动终端
Plug 'voldikss/vim-floaterm'
"自动括号"
Plug 'jiangmiao/auto-pairs'
"virtual模式
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"等号对齐
Plug 'godlygeek/tabular'
"基于lsp语法高亮
"Plug 'nvim-treesitter/nvim-treesitter'
Plug 'jackguo380/vim-lsp-cxx-highlight'
"Plug 'sheerun/vim-polyglot'
"Plug 'octol/vim-cpp-enhanced-highlight'
"启动页
Plug 'mhinz/vim-startify'
"模糊搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"缩进线
Plug 'Yggdroot/indentLine'
"多行virtual
Plug 'terryma/vim-multiple-cursors'
"片段
Plug 'SirVer/ultisnips',{'for': 'markdown' }
"Plug 'honza/vim-snippets'
"markdown相关
Plug 'plasticboy/vim-markdown',{'for':'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' , 'for': 'markdown'}
"图标
Plug 'ryanoasis/vim-devicons'
"surroundings
Plug 'tpope/vim-surround'
"suda.vim
Plug 'lambdalisue/suda.vim'
call plug#end()
filetype plugin indent on

""
"相对行号
set relativenumber
set nowrap
set sidescroll=1
"闹铃
set noeb
set autoread
filetype plugin on
"剪切板
set clipboard=unnamed
set nobackup
set autowrite
set ruler
set magic
set guioptions-=T
set guioptions-=m
"语法高亮
set syntax=on
set confirm
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
"行号
set nu
set history=1000
set noswapfile
set ignorecase
set hlsearch
set incsearch
set gdefault
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp939
set langmenu=zh_CN.UTF-8
set helplang=cn
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
filetype on
filetype indent on
set viminfo+=!
set iskeyword+=_,$,@,%,#,-
set linespace=0
set wildmenu
set backspace=2
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set showmatch
set matchtime=1
set scrolloff=5
set smartindent
set showmode
set showcmd
set shortmess-=5
au BufRead,BufNewFile * setfiletype txt
let mapleader=" "




"新建.c,.h,.sh文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	if &filetype == 'cpp'
        call setline(1, "#include <bits/stdc++.h>")
		call append(line("."), "#include <ext/rope>")
		call append(line(".")+1, "//#define int long long")
		call append(line(".")+2, "#define lowbit(x) (x&-x)")
		call append(line(".")+3, "#define SZ(x) ((int)x.size())")
		call append(line(".")+4, "#define all(x) x.begin(),x.end()")
		call append(line(".")+5, "#define lc (o<<1)")
		call append(line(".")+6, "#define rc (o<<1|1)")
		call append(line(".")+7, "#define IOS ios::sync_with_stdio(false);cin.tie(0);cout.tie(0)")
		call append(line(".")+8, "using namespace std;")
		call append(line(".")+9, "//mt19937 rnd(time(0));")
		call append(line(".")+10, "typedef long double ld;")
		call append(line(".")+11, "typedef long long LL;")
		call append(line(".")+12, "typedef long long ll;")
		call append(line(".")+13, "typedef unsigned long long ull;")
		call append(line(".")+14, "typedef vector<int> vi;")
		call append(line(".")+15, "typedef vector<LL> vll;")
		call append(line(".")+16, "typedef pair<int,int> pii;")
		call append(line(".")+17, "typedef pair<LL,LL> pll;")
		call append(line(".")+18, "const int INF = 0x3f3f3f3f;")
		call append(line(".")+19, "const LL INF_ll = 0x3f3f3f3f3f3f3f3fLL;")
		call append(line(".")+20, "const double PI = acos(-1.0);")
		call append(line(".")+21, "const double EPS = 1e-8;")
		call append(line(".")+22, "const char *INPUT = \"/home/ts/code/in.in\";")
		call append(line(".")+23, "")
	endif
	"新建文件后，自动定位到文件末尾
endfunc
autocmd BufNewFile * normal G


"select all
nnoremap <C-a> ggvG$
"copy to sys clipboard
vnoremap <C-y> "+y
"floaterm ranger
nnoremap <leader>ra :FloatermNew ranger<cr>
"floaterm lazygit
nnoremap <leader>lg :FloatermNew lazygit<cr>
"floaterm run
nnoremap <leader>run :FloatermNew run %<cr>
"increase window height
nnoremap <leader>hi :res +5<cr>
"decrease window height
nnoremap <leader>hd :res -5<cr>
"increase window width
nnoremap <leader>wi :vertical res +5<cr>
"decrease window width
nnoremap <leader>wd :vertical res -5<cr>



"主题颜色配置
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif




"nordic theme config
" let g:nord_bold = 0
" let g:nord_uniform_status_lines = 1
" let g:nord_italic = 1
" let g:nord_underline = 1
" let g:nord_italic_comments = 1
"


"gruvbox theme config
" let g:gruvbox_sign_column='bg0'
" let g:gruvbox_color_column='bg0'
" let g:gruvbox_number_column='bg0'
"



"colorscheme palenight
"colorscheme onedark
colorscheme dracula
"colorscheme one
"colorscheme nord
"colorscheme gruvbox



"colorscheme config
set background=dark
set t_Co=256
"hi Normal ctermbg=NONE guibg=NONE






"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   
"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"设置切换Buffer快捷键"
nnoremap <leader>j :bn<cr>
nnoremap <leader>k :bp<cr>
nnoremap <leader>d :bd<cr>
" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"let g:airline_theme='palenight'
"let g:airline_theme='onedark'
let g:airline_theme='dracula'
"let g:airline_theme='one'
"let g:airline_theme='gruvbox'
"let g:airline_theme='nord'
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = '|'
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'


"let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed='normal'
let g:ale_lint_on_insert_leave=1
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
"let g:ale_sign_error = ''
"let g:ale_sign_warning = ''
"let g:ale_sign_warning = ''
"let g:ale_sign_warning = ''
"let g:ale_sign_warning = '△'
"let g:ale_sign_warning = '☡'
"let g:ale_sign_warning = 'の'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"C 语言配置检查参数"
let g:ale_c_gcc_options = '-Wall -O2 -std=c11'
"C++ 配置检查参数"
let g:ale_cpp_gcc_options='-Wall -O2 -std=c++14'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>a :ALEToggle<CR>
"<Leader>g查看错误或警告的详细信息
nmap <Leader>g :ALEDetail<CR>
let g:ale_linters = {
\   'c++': ['g++'],
\   'c': ['gcc'],
\   'python': ['pylint'],
\}


let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['lightyellow', 'lightcyan', 'lightblue', 'lightmagenta'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\   }
\}


"目录树
let g:NERDTreeWinSize = 30 "设定 NERDTree 视窗大小
map <F3> :NERDTreeToggle<CR>
""let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
""autocmd vimenter * if !argc()|NERDTree|endif
""自动打开
""autocmd vimenter * NERDTree
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"let g:NERDTreeShowLineNumbers=1  " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
"Making it prettier
let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 0
" 过滤: 所有指定文件和文件夹不显示
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__'] 
let g:NERDTreeIndicatorMapCustom = { 
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
\ }
"set guifont=Droid_Sans_Mono_Dotted_for_Powerline_Bold:h11
let g:NERDSpaceDelims = 1
""let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1


"coc补全插件

let g:coc_global_extensions = ['coc-calc','coc-clangd','coc-cmake','coc-highlight','coc-json','coc-marketplace','coc-translator','coc-vimlsp','coc-snippets','coc-ultisnips' ]

set updatetime=100

set shortmess+=c

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_disable_startup_warning=1
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
"popup
nmap <Leader>t <plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)
"echo
nmap <Leader>e <Plug>(coc-translator-e)
vmap <Leader>e <Plug>(coc-translator-ev)
"replace
nmap <Leader>r <Plug>(coc-translator-r)
vmap <Leader>r <Plug>(coc-translator-rv)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


"vim-floaterm
"let g:floaterm_keymap_new = '<F1>'
let g:floaterm_keymap_kill = '<F2>'
let g:floaterm_keymap_toggle = '<F1>'


set pyxversion=3



"indentLine
let g:indentLine_enabled = 1
let g:indentLine_color_term = 200
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']



"FZF
map <C-p> :FZF<CR>

"cpp
" let g:cpp_class_scope_highlight = 1
" let g:cpp_class_decl_highlight = 1
" let g:cpp_posix_standard = 1
" let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_concepts_highlight = 1
" let g:cpp_no_function_highlight = 1

"ultisnips
"设置tab键为触发键
let g:UltiSnipsExpandTrigger = '<leader><tab>'
" "设置向后跳转键
" let g:UltiSnipsJumpForwardTrigger = '<tab>'
" "设置向前跳转键
" let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'
" "设置文件目录
 let g:UltiSnipsSnippetDirectories=["/home/ts/snippets/"]
" "设置打开配置文件时为垂直打开
" let g:UltiSnipsEditSplit="vertical"


"vim-markdown
let g:vim_markdown_folding_disabled = 0
let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_folding_style_pythonic = 1


"auto-pairs
let g:AutoPairsMapBS = 1
let g:AutoPairsMultilineClose = 0


"markdown-preview
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 1
    \ }
" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'


"suda
let g:suda_smart_edit = 1
