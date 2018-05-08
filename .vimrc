
"source ~/.vim/Basic_config.vim
"source ~/.vim/Vundle_config.vim


" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC


" =====================================================================================

" 判断系统
if has('win32')


">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	窗口

" 隐藏 启动时 援助索马里儿童提示
set shortmess=atI

" 隐藏 窗口上侧 工具栏
set guioptions-=T

" 隐藏 窗口上侧 菜单栏
set guioptions-=m

" 隐藏 窗口右侧 滚动条
set guioptions-=r

" 隐藏 窗口左侧 滚动条
set guioptions-=L

" 隐藏 窗口底部 滚动条
set guioptions-=b

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	字体

" 设置 字体 大小
set guifont=Source\ Code\ Pro\ Regular\ 14

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	行 列

" 显示 行号
set number

" 不换行
set nowrap

" 高亮 显示 当前行
set cursorline

" 高亮 显示 当前列
set cursorcolumn

" 设定 光标 总在 屏幕的 中间行
:se so=999

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	文件
"从不备份(文件保存时，不产生~备份文件)
set nobackup
set noundofile

"不产生交换文件(文件编辑时，不产生.swp交换文件)
set noswapfile

" 自动 重新 读入(当打开文件在外部被修改,自动更新该文件)
set autoread

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	tab 键

" tab键 转为 空格
set expandtab

" 一个 tab键 占 2个 空格
set tabstop=2

" 编辑模式, 退格键 的 退回 为 2个 空格
set softtabstop=2

" tab键 自动缩进, 宽度 为 2个 空格
set shiftwidth=2

" 使用 < 和 > 进行缩进, 根据 shiftwidth 调整宽度
set shiftround

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	backspace键

" 关闭vi兼容模式
set nocompatible

"配置backspace 使退格键（backspace）使用此顺序; 正常处理indent, eol, start等
set backspace=eol,start,indent

"允许backspace和光标键跨越行边界(不建议)
set whichwrap+=<,>,h,l
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	检索

" 检索 忽略 大小写
set ignorecase

" 高亮 显示 检索 结果
set hlsearch

" 检索时, 直接 高亮
set incsearch

" 检索 到 文件 两端时, 不重新 搜索
set nowrapscan

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	命令行 状态栏

" 命令行 高度
set cmdheight=2

" 命令行 显示 输入 命令
set showcmd

" 命令行 显示 当前 模式(vim)
set showmode

" 标尺(命令行 显示 光标位置 的 行号 和 列号, 逗号 分隔)
set ruler

" 命令 历史 行数
set history=50

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	编码

" vim 内部 编码
set encoding=utf-8

" 当前 编辑 文件 编码
set fileencoding=utf-8

" 自动 识别 文件 编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 屏幕 显示 编码
set termencoding=utf-8

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   Vundle 插件

" 关闭 兼容模式, 必须
set nocompatible

" 关闭 文件 类型的 自动 检测 功能, 必须
filetype off

" 定义 映射 变量
let mapleader = ','
let g:mapleader = ','

" 设置 运行 路径, 加载 和 初始化 vundle
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle/')


" 加载 Vundle 插件(必须)
Plugin 'VundleVim/Vundle.vim'

"---------------------------------
"   theme 主题
"---------------------------------
Plugin 'altercation/vim-colors-solarized'


"---------------------------------
"   美化 状态栏 和 主题
"---------------------------------
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'



"---------------------------------
"   可视化 缩进
"---------------------------------
Plugin 'nathanaelkane/vim-indent-guides'


"---------------------------------
"   行位 空格 处理
"---------------------------------
Plugin 'bronson/vim-trailing-whitespace'


"---------------------------------
"   多光标编辑
"---------------------------------
Plugin 'terryma/vim-multiple-cursors'


"---------------------------------
"   自动 补全(单引号、双引号、括号等)
"---------------------------------
Plugin 'raimondi/delimitmate'


"---------------------------------
"   代码高亮(支持大多数语言)
"---------------------------------
Plugin 'sheerun/vim-polyglot'





" 文件检索	'tacahiroy/ctrlp-funky'


" 重复一个插件的操作	'tpope/vim-repeat'

" HTML
" 成对标签跳转	'vim-scripts/matchit.zip'
" 成对标签补全	'docunext/closetag.vim'
" othree/html5.vim




" 加载 插件 结束
call vundle#end()

" 打开 文件 类型 检测功能, 自动加载 文件类型 插件, 自动设置 缩进
filetype on

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   配色 方案

" 配色 主题
colorscheme solarized

" 设置 背景 颜色
set background=dark     " 暗色
"set background=light    " 亮色

" 背景 颜色 切换(暗色 和 亮色 切换)
call togglebg#map("<F1>")


"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<




">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   状态栏 主题 风格

let g:airline#extensons#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_powerline_fonts=1

let g:airline_theme='jellybeans'

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   可视化 缩进

" 默认 开启
let g:indent_guides_enable_on_vim_startup = 1

" 第二层 开始 可视化 显示
let g:indent_guides_start_level = 2

" 色块 宽度 尺寸
let g:indent_guides_guide_size = 1

" 快捷键 ,i 开/关 缩进可视化
nmap <silent> <leader>i <Plug>IndentGuidesToggle

" 自定义 颜色
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   行尾 空格 处理

" ,空格 去除多余空格
map <leader><space> :FixWhitespace<cr>

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   多光标编辑

" <C-n> 选中
" c 替换内容
" 例子: 检索 hello　选中 替换 world  --->  f hello <C-n> c wrold


"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<




">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	自定义　快捷键

" 保存
nmap <Leader>w :w<CR>

" 退出
nmap <Leader>q :q<CR>

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<




elseif has('unix') " unix




">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	窗口

" 隐藏 启动时 援助索马里儿童提示
set shortmess=atI

" 隐藏 窗口上侧 工具栏
set guioptions-=T

" 隐藏 窗口上侧 菜单栏
set guioptions-=m

" 隐藏 窗口右侧 滚动条
set guioptions-=r

" 隐藏 窗口左侧 滚动条
set guioptions-=L

" 隐藏 窗口底部 滚动条
set guioptions-=b

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	字体

" 设置 字体 大小
set guifont=Source\ Code\ Pro\ Regular\ 14

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	行 列

" 显示 行号
set number

" 不换行
set nowrap

" 高亮 显示 当前行
set cursorline

" 高亮 显示 当前列
set cursorcolumn

" 设定 光标 总在 屏幕的 中间行
:se so=999

" 自动缩进(对齐),每行的缩进值与上一行相等
set autoindent

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	文件
"从不备份(文件保存时，不产生~备份文件)
set nobackup
set noundofile

"不产生交换文件(文件编辑时，不产生.swp交换文件)
set noswapfile

" 自动 重新 读入(当打开文件在外部被修改,自动更新该文件)
set autoread

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	tab 键

" tab键 转为 空格
set expandtab

" 一个 tab键 占 4个 空格
set tabstop=4

" 编辑模式, 退格键 的 退回 为 4个 空格
set softtabstop=4

" tab键 自动缩进, 宽度 为 4个 空格
set shiftwidth=4

" 使用 < 和 > 进行缩进, 根据 shiftwidth 调整宽度
set shiftround

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	检索

" 检索 忽略 大小写
set ignorecase

" 高亮 显示 检索 结果
set hlsearch

" 检索时, 直接 高亮
set incsearch

" 检索 到 文件 两端时, 不重新 搜索
set nowrapscan

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	命令行 状态栏

" 命令行 高度
set cmdheight=2

" 命令行 显示 输入 命令
set showcmd

" 命令行 显示 当前 模式(vim)
set showmode

" 标尺(命令行 显示 光标位置 的 行号 和 列号, 逗号 分隔)
set ruler

" 命令 历史 行数
set history=50

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<




">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	编码

" vim 内部 编码
set encoding=utf-8

" 当前 编辑 文件 编码
set fileencoding=utf-8

" 自动 识别 文件 编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 屏幕 显示 编码
set termencoding=utf-8

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   Vundle 插件

" 关闭 兼容模式, 必须
set nocompatible

" 关闭 文件 类型的 自动 检测 功能, 必须
filetype off

" 定义 映射 变量
let mapleader = ','
let g:mapleader = ','

" 设置 运行 路径, 加载 和 初始化 vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 加载 Vundle 插件(必须)
Plugin 'VundleVim/Vundle.vim'

"---------------------------------
"   theme 主题
"---------------------------------
Plugin 'altercation/vim-colors-solarized'


"---------------------------------
"	状态栏 美化
"---------------------------------
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'



"---------------------------------
"   可视化 缩进
"---------------------------------
Plugin 'nathanaelkane/vim-indent-guides'


"---------------------------------
"   行位 空格 处理
"---------------------------------
Plugin 'bronson/vim-trailing-whitespace'


"---------------------------------
"   多光标编辑
"---------------------------------
Plugin 'terryma/vim-multiple-cursors'


"---------------------------------
"   自动 补全(单引号、双引号、括号等)
"---------------------------------
Plugin 'raimondi/delimitmate'


"--------------------------------------
"   快速 加环绕符号(单引号/双引号/括号/成对标签等)
"--------------------------------------
Plugin 'tpope/vim-surround'


"--------------------------------------
"   代码注释
"--------------------------------------
Plugin 'scrooloose/nerdcommenter'


"--------------------------------------
"   括号高亮
"--------------------------------------
Plugin 'kien/rainbow_parentheses.vim'


"--------------------------------------
"   文本对齐/过滤
"--------------------------------------
Plugin 'godlygeek/tabular'


"--------------------------------------
"   区域选中
"--------------------------------------
Plugin 'terryma/vim-expand-region'


"--------------------------------------
"   PHP语法高亮
"--------------------------------------
Plugin 'StanAngeloff/php.vim'


"---------------------------------
"   html5语法高亮
"---------------------------------
Plugin 'othree/html5.vim'


"---------------------------------
"   自动补全HTML/XML标签
"---------------------------------
Plugin 'docunext/closetag.vim'


"---------------------------------
"   Vue 组件高亮
"---------------------------------
Plugin 'posva/vim-vue'


" 加载 插件 结束
call vundle#end()

" 打开 文件 类型 检测功能, 自动加载 文件类型 插件, 自动设置 缩进
filetype on

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   theme 主题

" 配色 主题
colorscheme solarized

" 设置 背景 颜色
"set background=dark     " 暗色
set background=light    " 亮色

" 背景 颜色 切换(暗色 和 亮色 切换)
call togglebg#map("<F1>")


"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   状态栏 美化

let g:airline#extensons#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_powerline_fonts=1

let g:airline_theme='jellybeans'

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   可视化 缩进

" 默认 开启
let g:indent_guides_enable_on_vim_startup = 1

" 第二层 开始 可视化 显示
let g:indent_guides_start_level = 2

" 色块 宽度 尺寸
let g:indent_guides_guide_size = 1

" 自定义 颜色
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   行尾 空格 处理

" ,空格 去除多余空格
map <leader><space> :FixWhitespace<cr>

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   多光标编辑

" <C-n> 选中
" c 替换内容
" 例子: 检索 hello　选中 替换 world  --->  f hello <C-n> c wrold

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   自动 补全(单引号、双引号、括号等)

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   快速 加环绕符号(单引号/双引号/括号/成对标签等)

" csw"		添加双引号
" yss'		整行添加单引号
" cs"'		双引号替换为单引号
" cs(]		括号替换为中括号
" sct'		标签替换为单引号
" ds'		删除单引号

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   代码注释

" shift+v 选择要注释的行
" ,cc  注释单行或者选中行
" ,cm  多行注释
" ,cu  解开注释
" ,ci  注释、取消注释切换

" 在注释符默认添加空格
let g:NERDSpaceDelims = 1

" 将行注释符左对齐而不是下面的代码缩进
let g:NERDDefaultAlign = 'left'

" 使用紧凑语法美化多行注释
"let g:NERDCompactSexyComs = 1

" 设置语言默认使用备用定界符
"let g:NERDAltDelims_java = 1

" 添加自定义格式或覆盖默认值
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'} }

" 允许注释和转换空行 (注释区域时有用)
"let g:NERDCommentEmptyLines = 1

" 启用时修整尾随空格注释
"let g:NERDTrimTrailingWhitespace = 1

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   括号高亮

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16

let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   文本对齐/过滤

" ,a= 等号对齐
" ,a: 冒号对齐
" ,a" 双引号对齐
" ,a' 单引号对齐

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>

nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>

nmap <Leader>a" :Tabularize /"<CR>
vmap <Leader>a" :Tabularize /"<CR>

nmap <Leader>a' :Tabularize /'<CR>
vmap <Leader>a' :Tabularize /'<CR>

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   区域选中

vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   PHP语法高亮

let g:php_syntax_extensions_enabled = ["bcmath", "bz2", "core", "curl", "date", "dom", "ereg", "gd", "gettext", "hash", "iconv", "json", "libxml", "mbstring", "mcrypt", "mhash", "mysql", "mysqli", "openssl", "pcre", "pdo", "pgsql", "phar", "reflection", "session", "simplexml", "soap", "sockets", "spl", "sqlite3", "standard", "tokenizer", "wddx", "xml", "xmlreader", "xmlwriter", "zip", "zlib"]

let php_var_selector_is_identifier = 1
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   html5语法高亮

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   自动补全HTML/XML标签

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"   Vue 组件高亮

autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
"let g:vue_disable_pre_processors=1

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"	自定义　快捷键

" 复制到系统剪切板
nmap <leader>y "+y

" 系统剪切板内容粘贴到vim
nmap <leader>p "+p

" 新建一个tab标签页
nmap <leader>tc :tabnew

" 下一个tab标签页
nmap <leader>tn :tabn<CR>

" 上一个tab标签页
nmap <leader>tp :tabp<CR>

" 执行外部shell命令
nmap <leader>s :!

" sudo 保存
nmap <leader>w :w ! sudo tee %

"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<




elseif has('mac')

    echo 'mac'
endif


