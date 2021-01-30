set nocompatible
call plug#begin(stdpath('data').'/plugged')
Plug 'dracula/vim',{'as':'dracula'}
Plug 'luochen1990/rainbow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/calendar.vim'
Plug 'lambdalisue/suda.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'scrooloose/nerdcommenter' 
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'
"Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'plasticboy/vim-markdown',{'for':'markdown'}
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' , 'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode'
call plug#end()
filetype plugin on

""
"设置建议每一行的最大宽度
"set cc=80
"相对行号
set relativenumber
set nowrap
set sidescroll=1
"闹铃
set noeb
set autoread
filetype plugin on
"剪切板
set clipboard+=unnamedplus
set nobackup
set autowrite
set ruler
set magic
set guioptions-=T
set guioptions-=m
"语法高亮
syntax on
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
set selectmode=key
set report=0
set showmatch
set matchtime=1
set scrolloff=5
set smartindent
set showmode
"set showcmd
set shortmess-=5
au BufRead,BufNewFile * setfiletype txt
let mapleader=" "
nnoremap <Backspace> :noh<CR>




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
hi Normal ctermbg=NONE guibg=NONE




"floaterm ranger
nnoremap <leader>ra :FloatermNew ranger<cr>
"floaterm lazygit
nnoremap <leader>lg :FloatermNew lazygit<cr>
"floaterm run
nnoremap <leader>run :FloatermNew run %<cr>



"coc
let g:coc_global_extensions = [
    \ 'coc-marketplace',
    \ 'coc-clangd',
    \ 'coc-cmake',
    \ 'coc-highlight',
	\ 'coc-diagnostic',
	\ 'coc-gitignore',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-pyright',
	\ 'coc-python',
	\ 'coc-snippets',
	\ 'coc-syntax',
	\ 'coc-translator',
	\ 'coc-vimlsp',
	\ 'coc-yank']
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

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction
" 函数文档
nnoremap <silent> K :call <SID>show_documentation()<CR>
" 函数参数的文档
autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>


" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


set pyxversion=3


"auto-pairs
let g:AutoPairsMapBS = 1
let g:AutoPairsMultilineClose = 0


"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
nnoremap <leader>j :bn<cr>
nnoremap <leader>k :bp<cr>
nnoremap <leader>d :bd<cr>
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


"vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"calendar
nmap \cc :Calendar -view=clock<cr>
nmap \ca :Calendar<cr>



" 开启gitgutter
let g:gigutter_enable = 1
" 开启行高亮
let g:gitgutter_highlight_lines = 0
" 开启行号高亮
let g:gitgutter_highlight_linenrs = 1
" 关闭默认快捷键
let g:gitgutter_map_keys = 0
" 折叠相关
" set foldtext=gitgutter#fold#foldtext()
" 文件更改数量超过500将会压缩显示
let g:gitgutter_max_signs = 500
let g:gitgutter_preview_win_floating = 1

" 关闭column的提示符号
let g:gitgutter_signs = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed = '▎'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▋'

highlight link GitGutterAddLineNr SignifySignAdd
highlight link GitGutterChangeLineNr SignifySignChange
highlight link GitGutterDeleteLineNr SignifySignDelete
highlight link GitGutterChangeDeleteLineNr SignifySignDelete





let g:indentLine_bufTypeExclude = ["help", "quickfix", "terminal", "prompt", "nofile"]
let g:indentLine_fileTypeExclude = [
            \ 'terminal',
            \ 'defx',
            \ 'startify',
            \ 'terminal',
            \ 'coc-explorer',
            \ 'json',
            \ 'jsonc',
            \ 'vista',
            \ 'help',
            \ 'nerdtree',
            \ 'tagbar',
            \ 'vimfiler',
            \ 'markdown',
            \ 'minimap',
            \ 'dashboard',
            \ 'tex',
            \ 'vimwiki',
            \ 'man',
            \ 'vista_markdown',
            \]


vmap <leader>D :DogeGenerate<CR>


let g:Lf_WindowHeight = 0.2
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "FiraCode Nerd Font Mono"
let g:Lf_HideHelp = 1
" 使用leaderf file path的时候不更改目录到path
let g:Lf_NoChdir = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
"let g:Lf_WindowPosition = 'popup'
"let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "FiraCode Nerd Font Mono" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'

function! LeaderfFileWithWiki(query) abort
    if empty(a:query) && &ft ==? 'vimwiki' && match(expand('%'), expand(g:vimwiki_path)) > -1
        exec "LeaderfFile " . g:vimwiki_path
    else
        exec "LeaderfFile " . a:query
    endif
endfunction

function! LeaderfRgWithWiki(query) abort
    if &ft ==? 'vimwiki' && match(expand('%'), expand(g:vimwiki_path)) > -1
        exec 'Leaderf rg -F -e "" ' . g:vimwiki_path
    else
        exec 'Leaderf rg -F -e ' . leaderf#Rg#visual()
    endif
endfunction

nnoremap <M-f> :call LeaderfFileWithWiki("")<CR>
nnoremap <M-F> :call LeaderfFileWithWiki($HOME)<CR>
nnoremap <M-s> :call LeaderfRgWithWiki("")<cr>
nnoremap <M-b> :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
nnoremap <M-c> :LeaderfCommand<cr>
nnoremap <M-t> :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
nnoremap <M-T> :LeaderfBufTagAll<cr>
nnoremap ?     :LeaderfLineAll<CR>
nnoremap <M-r> :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
nnoremap <M-w> :<C-U><C-R>=printf("Leaderf! window %s", "")<CR><CR>

let g:table_mode_corner='|'
