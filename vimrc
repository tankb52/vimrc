"通过 :version 来查看vim配置等文件的路径
"从Win下拷到Linux下 ，需要运行 sed -i "s/\r//" ~/.vim/vimrc
""""""""""""""""""""我的配色方案""""""""""""""""""""""""""
"推荐配色：
"biogoo,calmar256-light,candycode,desert256,desertEx,inkpot,molokai,moria,mustang,navajo-night,peaksea,rdark,rootwater,settlemyer,tango2,tir_black,torte,vibrantink,vividchalk,wombat256,xoria256,zenburn
"查看配色:color
set t_Co=256
set background=dark
"打开真彩色支持
set termguicolors
highlight Normal  guibg=NONE ctermbg=none
"根据终端或GUI界面来选择不同的colorscheme
if has("gui_running")
    colorscheme wombat256
else
    colorscheme desert
endif
"工作在不兼容模式下
set nocp
"打开状态栏标尺,在状态栏显示光标的行号和列号
set ruler
"打开行号和相对行号rnu
set nu
set relativenumber
"高亮当前行和当前列
"set cursorcolumn
set cursorline
"历史记录 20 -1000
set history=1000
"可视化警告
set visualbell
"文件关闭后依然维护撤销历史纪录
"set undodir=~/.vim/undo
"set undofile
"根据文件自动切换目录
set autochdir
"打开拼写检查并忽略中文
set spelllang=en,cjk
""""""""""""""""""搜索"""""""""""""""""""""""""""
set hls    		"搜索时高亮显示被找到的文本
set incsearch    	"打开实时搜索
set ignorecase    	"忽略大小写
set smartcase     	"智能匹配，小写兼容大写，大写不兼容小写
"括号匹配
set showmatch
"打开关键字上色(语法高亮)
syntax on
"自动缩进和智能缩进
set autoindent
set smartindent
"加强Backspace的功能
set backspace=indent,eol,start
"使hjkl键可以折行
set whichwrap=b,s,<,>,[,],h,l
"不在空格等处断行
set breakat=
"设定不换行
set wrap
"换行时对齐右边的距离
set wrapmargin =2
"不在单词中间断行
set linebreak
"设置默认首行缩进宽度（shiftwidth）
set shiftwidth=4
"设置文本宽度（textwidth）强行换行，可按J合并行
set textwidth=78
"认定窗口大小
set lines=36 columns=84
"设定帮助语言
set helplang=cn
"GUI 设置，:help guioptions"查看
" i, Icon, 在任务栏显示 gVim 图标
" m, Menu, 显示菜单栏
" t, Tear off，允许菜单被分离出来
" r, Always Right scrollbar,总是在右侧放置滚动条
" b, Bottom scrollbar，在底部放置滚动条
set guioptions=imtrb
"显示不可见符号
"set list
"set invlist
"用|.代替Tab符号
set listchars=tab:\|\.,eol:$,trail:~
"与widows共享剪贴板
set clipboard+=unnamed
"命令行高度
set cmdheight=2
"显示输入的命令
set showcmd
"""""""""""""""""""状态栏设置"""""""""""""""""""""""""""""""""""""""""""""
" 设置状态栏
set laststatus=2
"""""""""""""状态行根据状态的不同，显示不同的颜色"""""""""""""""""""
function! InsertStatuslineColor(mode)
if a:mode == 'i'
  hi statusline guibg=red
elseif a:mode == 'r'
  hi statusline guibg=blue
else
  hi statusline guibg=black
endif
endfunction
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=orange guifg=white
hi statusline guibg=gray guifg=black
""""""""""""""""""""""""""""参考 https://zhuanlan.zhihu.com/p/25494323
"设置状态栏信息及颜色
set statusline=
set statusline +=%4*%n%m%r%h%w%*
set statusline +=%F
set statusline +=%=%1*[FORMAT=%2*%{&ff}:%{&fenc!=''?&fenc:&enc}%1*]
set statusline +=%=[TYPE=%2*%Y%1*]
set statusline +=%=%=[COL=%2*%03v%1*]
set statusline +=%=[ROW=%2*%03l%1*/%3*%L(%p%%)%1*]
set statusline +=%=%4*%w%h%r%m%n%*
hi User1 guifg=gray
hi User2 guifg=green
hi User3 guifg=white
hi User4 guifg=red
hi User5 guifg=#a0ee40
"""""""""""""""""""""另一个配置"""""""""""""""""""""
"set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L\ %*            "total lines
"set statusline +=%3*%p%%                "%%%
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor
"hi User1 guifg=#eea040 guibg=#222222
"hi User2 guifg=#dd3333 guibg=#222222
"hi User3 guifg=#ff66ff guibg=#222222
"hi User4 guifg=#a0ee40 guibg=#222222
"hi User5 guifg=#eeee40 guibg=#222222
"""""""""""""""""""ywvim设置"""""""""""""""""""""""""""""""""""""""""""""
let g:ywvim_ims=[ 
            \['wb98', '五笔98', 'wubi98.ywvim'], 
            \['py', '拼音', 'pinyin.ywvim'], 
            \]

let g:ywvim_py = { 'helpim':'wb98', 'gb':0 }
let g:ywvim_zhpunc = 1
let g:ywvim_listmax = 5
let g:ywvim_esc_autoff = 0
let g:ywvim_autoinput = 0
let g:ywvim_intelligent_punc=1
let g:ywvim_circlecandidates = 1
let g:ywvim_helpim_on = 0
let g:ywvim_matchexact = 0
let g:ywvim_chinesecode = 1
let g:ywvim_gb = 0
let g:ywvim_preconv = 'g2b'
let g:ywvim_conv = ''
let g:ywvim_lockb = 1
""""""""""""""""""""""""文件类型"""""""""""""""""""""""""""""""
" 侦测文件类型 
filetype on 
" 载入文件类型插件 
filetype plugin on 
" 为特定文件类型载入相关缩进文件 
filetype indent on 
"""""""""""""将log/md5 视为 text 类型"""""""""""""""""""
au BufRead,BufNewFile *.log 	setfiletype text
au BufRead,BufNewFile *.md5 	setfiletype text
"au BufRead,BufNewFile *.md	setfiletype text
"au BufRead,BufNewFile *.mkd	setfiletype text
""""""""""""""""""""""快捷键映射""""""""""""""""""""""""""""""""""
"键盘映射模式
"
"    map : 正常模式，可视化模式和运算符模式可用
"    nmap ：正常模式可用
"    vmap ：可视化模式可用
"    omap ：运算符模式可用
"    map! ：插入模式和命令行模式可用
"    imap ：插入模式可用
"    cmap ：命令行模式可用
vmap <C-C> "+y
nmap <C-P> "+gP
map  tn  <Esc>:tabnew<CR>
""""""""""""""""set guifont/gfn查看当前字体"""""""""""""""""""""""""""
 if has('gui_running')
    if has("win16") || has("win32") || has("win95") || has("win64")
        set guifont=Consolas:h14:cANSI:qDRAFT,Courier_New:h14:cANSI:qDRAFT
    else
        set guifont=Bitstream\ Vera\ Sans\ Mono\ 14
    endif
endif
"""""""""""""""Linux下中文编码设置"""""""""""""""""""""""""""""
set encoding=utf-8
""""""""""""""""打开文件时依次尝试编码"""""""""""""""""""""
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"设置新文件的编辑为utf-8
set encoding=utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8
"打开断行模块对亚洲语言的支持,可简写为 set fo+=mB
"如果Unicode 值大于255的文本，不必等到空格再折行
set formatoptions+=m
"合并两行中文时，不在中间加空格
set formatoptions+=B
"彩虹括号增强版 (Rainbow Parentheses Improved)
"https://github.com/luochen1990/rainbow
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
	let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold', 'start=/</ end=/>/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}
"另一个彩色括号插件，在Gvim 下工作良好"""""""
"let g:rbpt_colorpairs = [
"    \ ['brown',       'RoyalBlue3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkred',     'DarkOrchid3'],
"    \ ['red',         'firebrick3'],
"    \ ]
"let g:rbpt_max = 16
"let g:rbpt_loadcmd_toggle = 0
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"au Syntax * RainbowParenthesesLoadChevrons 
""""""""""""""""""VIM-Plug""""""""""""""""
call plug#begin()
	Plug 'mhinz/vim-startify'
	Plug 'jiangmiao/auto-pairs'
	Plug 'plasticboy/vim-markdown'
	Plug 'godlygeek/tabular'
	Plug 'hotoo/pangu.vim'
	Plug 'tpope/vim-surround' 
	Plug 'embear/vim-foldsearch'
	Plug 'chxuan/change-colorscheme' 
	Plug 'vim-voom/VOoM' 
	Plug 'iamcco/mathjax-support-for-mkdp'
	Plug 'iamcco/markdown-preview.vim'
	Plug 'luochen1990/rainbow'
	Plug 'vim-scripts/fcitx.vim' 
	Plug 'mbbill/fencview'
	Plug 'yegappan/mru'
	Plug 'vim-scripts/ywvim'
call plug#end()
""""""""""vim-Markdown""""""""""
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_toc_autofit = 1
"""""""change-colorscheme"""""""
"map <F12> :NextColorScheme<CR>
"imap <F12> <ESC> :NextColorScheme<CR>
"map <F11> :PreviousColorScheme<CR>
"imap <F11> <ESC> :PreviousColorScheme<CR>
""""""""""""Startify Custom""""""""""""""""
let g:startify_custom_header = [
				\'		__________________________',
				\'		  _    _     __     _   _ ',
				\'		  |   /      /      /  /| ',
				\'		--|--/------/------/|-/-|-',
				\'		  | /      /      / |/  | ',
				\'		__|/____ _/_ ____/__/___|_',
				\]
let g:startify_custom_footer = [
            \ '		+------------------------------+',
            \ '		|      1.01 ^ 365 =  37.78     |',
            \ '		|      0.99 ^ 365 =   0.02     |',
            \ '		|              `/ /\ () `/ |_| |',
            \ '		+----------------+-------------+',
            \]
