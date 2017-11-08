"==========================
"	编码
"==========================
"Vim内部使用的字符编码方式
set encoding=utf-8
"当前编辑文件的编码方式
set fileencoding=utf-8
"文件自动识别的编码方式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"屏幕显示的编码方式
set termencoding=utf-8

if has("win16") || has("win32") || has("win64") || has("win95")
	"解决菜单乱码
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim

	"解决consle输出乱码
	language messages zh_CN.utf-8
endif



"==========================
"	窗口
"==========================
"自动最大化
autocmd GUIEnter * simalt ~x

"窗口大小 行=lines 列=columns
"set lines=60 columns=200


"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI
"隐藏窗口上侧工具栏
set guioptions-=T                   
"隐藏窗口上侧菜单栏
set guioptions-=m
"隐藏窗口右侧的滚动条
set guioptions-=r
"隐藏窗口左侧的滚动条
set guioptions-=L
"隐藏窗口底部的滚动条
set guioptions-=b




"==========================
"	字体
"==========================
"设置字体
if has("win16") || has("win32") || has("win64") || has("win95")
	" window
	set guifont=Source_Code_Pro:h14
else
	" linux
	set guifont=Source\ Code\ Pro\ Regular\ 14
endif

"防止特殊符号无法正常显示
set ambiwidth=double                




"==========================
"	行、列
"==========================
"显示行号
set number
"不要换行 
set nowrap
"高亮显示当前行
set cursorline
"高亮显示当前列
set cursorcolumn
"设定光标离窗口上下边界 n行时窗口自动滚动
set scrolloff=7





"==========================
"	文本
"==========================
"退出vim后，内容显示在终端屏幕
set t_ti= t_te=	
"选择文本时，光标所在位置也属于被选中的范围
set selection=inclusive	
set selectmode=mouse,key
"改变终端的标题
set title
" 不要闪烁 " don't beep
set novisualbell
" 不让vim发出讨厌的滴滴声
set noerrorbells
"当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set t_vb=
set tm=500
"在缓冲区之间切换时保持光标位置
set nostartofline
"设置匹配模式，显示匹配的括号
set showmatch
"当匹配括号的时候，眨眼的时间是多少
set mat=2
"允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存(没有保存的缓冲区可以自动隐藏)
set hidden					
set wildmode=longest:full,full
set ttyfast
" Use Unix as the standard file type
set ffs=unix,dos,mac
"如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
"合并两行中文时，不在中间加空格（当连接行时，不要在两个多字节字符之间插入空格）
set formatoptions+=B
"自动补全配置,让Vim的补全菜单行为与一般IDE一致
set completeopt=longest,menu
" 增强模式中的命令行自动完成操作（自动完成命令）（自身命令行模式智能补全）
set wildmenu
" Ignore compiled files （tab键的自动完成现在会忽略这些 ）
set wildignore=**.o,*~,.swp,*.bak,*.pyc,*.class




"==========================
"	文件
"==========================
"从不备份(文件保存时，不产生~备份文件)
set nobackup
set noundofile
"不产生交换文件(文件编辑时，不产生.swp交换文件)
set noswapfile
"自动重新读入(当打开文件在外部被修改，自动更新该文件)
set autoread





"==========================
"	tab键
"==========================
"将tab键转为空格
set expandtab
"一个tab键占4个空格
set tabstop=4
"编辑模式时,退格键的退回为4个空格
set softtabstop=4
"tab键自动缩进时,宽度为4个空格
set shiftwidth=4
"在这种缩进模式中,每一行都和前一行有相同的缩进量,同时能正确的识别出花括号,当遇到右花括号（}）,则取消缩进形式
set smartindent
"自动缩进(对齐),每行的缩进值与上一行相等
set autoindent
"在行和段开始处使用制表符
set smarttab
"使用 < 和 > 进行缩进时 依shiftwidth 调整宽度
set shiftround





"==========================
"	backspace键
"==========================
"配置backspace 使退格键（backspace）使用此顺序; 正常处理indent, eol, start等 
set backspace=eol,start,indent
"允许backspace和光标键跨越行边界(不建议)
set whichwrap+=<,>,h,l



"==========================
"   检索
"==========================
"搜索模式里忽略大小写
set ignorecase
"高亮显示搜索结果
set hlsearch
"搜索时,直接高亮
set incsearch
"如果搜索模式全是小写的，则忽略大小写，否则不区分大小写
set smartcase
"搜索到文件两端时,不重新搜索
set nowrapscan
" Remember info about open buffers on close
set viminfo^=%
" 设置魔术（对于正则表达式，可以打开魔法）
set magic




"==========================
"   命令行、状态栏
"==========================
"命令行高度
set cmdheight=2
"命令行显示输入的命令
set showcmd
"命令行显示vim当前模式
set showmode
"标尺，命令行显示光标位置的行号和列号，逗号分隔
set ruler
"记录冒号命令的历史行数
set history=200
"显示当前模式
set noshowmode

if has('statusline')
	"将状态行显示在窗口底部倒数第二行
	set laststatus=2
	" 文件名
	set statusline=%<%f\
	" 选项
        set statusline+=%w%h%m%r
        " Git Hotness
	"set statusline+=%{fugitive#statusline()}
	" 文件类型
        set statusline+=\ [%{&ff}/%Y]
	" 当前dir
	set statusline+=\ [%{getcwd()}]
	" 右对齐文件导航信息
	set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif



"==========================
"   命令行、状态栏
"==========================
"代码折叠
set foldenable
"代码折叠方式: manual(手工定义折叠) indent(用缩进表示折叠) expr(用表达式来定义折叠) syntax(用语法高亮来定义折叠) diff(对没有更改的文本进行折叠) marker(用标志折叠)
set foldmethod=indent
"显示折叠的级别
set foldlevel=99



" 当新建文件时自动加入头注释
autocmd BufNewFile *.php exec ":call SetComment()"

" 加入注释
func SetComment()
    call setline(1,"<?php")
    call append(line("."),"/*================================================================")
    call append(line(".")+1,   "*   Copyright (C) ".strftime("%Y")." Jnexpert Ltd. All rights reserved.")
    call append(line(".")+2, "*")
    call append(line(".")+3, "*   Filename : ".expand("%"))
    call append(line(".")+4, "*   Author   : Alex Xun")
    call append(line(".")+5, "*   Email    : xunzhibin@hotmail.com")
    call append(line(".")+6, "*   Create   : ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(line(".")+7, "*   描    述：")
    call append(line(".")+8, "*")
    call append(line(".")+9, "================================================================*/")
    call append(line(".")+10, "")
    "call append(line(".")+11, "")
endfunc

"映射F2快捷键，生成后跳转至第10行，然后使用o进入vim的插入模式
"map <F2> :call SetComment()<CR>:12<CR>o
map <F2> :call SetComment()<CR>:12<CR>