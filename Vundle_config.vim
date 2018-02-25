"--------------------------------------
" Vundle插件管理工具
" 克隆Vundle插件管理器 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 引入 在 .vimrc 文件中：source ~/.vim/Vundle_config.vim
" :PluginList          - 列出配置的插件
" :PluginInstall       - 安装插件
" :PluginInstall(!)    - 安装(更新)插件
" :PluginClean(!)      - 确认(或自动批准)删除未使用的插件
" < 插件管理 >
"--------------------------------------

"关闭兼容模式, 必须
set nocompatible
"关闭文件类型的自动检测功能，必须
filetype off
"定义映射变量
let mapleader = ','
let g:mapleader = ','

"""""""""""""""""""""""""""""""""""""""""""" Vundle 插件管理 开始 """"""""""""""""""""""""""""""""""""""""""""""""

" 设置运行路径，加载和初始化vundle
if has("win16") || has("win32") || has("win64") || has("win95")
	" window
	set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
	call vundle#begin('$VIM/vimfiles/bundle/')
else
	" linux
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif

" 让Vundle管理插件管理 Vundle (必需的)
Plugin 'VundleVim/Vundle.vim'


"--------------------------------------
"   theme 主题
"--------------------------------------
Plugin 'altercation/vim-colors-solarized'


"--------------------------------------
" 状态栏、buffer栏美化
"--------------------------------------
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


"--------------------------------------
"   代码高亮(支持大多数语言)
"--------------------------------------
Plugin 'sheerun/vim-polyglot'


"--------------------------------------
"   相同缩进的代码关联起来
"--------------------------------------
Plugin 'nathanaelkane/vim-indent-guides'


"--------------------------------------
"   快捷键选中 <> [] {} 中的内容
"--------------------------------------
Plugin 'gcmt/wildfire.vim'


"--------------------------------------
"   自动补全 引号，括号，括号等
"--------------------------------------
Plugin 'raimondi/delimitmate'


"--------------------------------------
"   高亮显示颜色代码
"--------------------------------------
Plugin 'gorodinskiy/vim-coloresque'


"--------------------------------------
"   文本对齐
"--------------------------------------
" ,a= 等号对齐
" ,a: 冒号对齐
" ,a" 双引号对齐
" ,a' 单引号对齐
"
Plugin 'godlygeek/tabular'


"--------------------------------------
"   代码行尾空格标红处理
"--------------------------------------
",空格    去掉多余空格
Plugin 'bronson/vim-trailing-whitespace'


"--------------------------------------
"   代码注释
"--------------------------------------
" shift+v 选择要注释的行
" ,cc  注释单行或者选中行   标签: //
" ,cm  多行注释             标签: /* */
" ,cu  解开注释
" ,ci  注释、取消注释切换   标签: //
Plugin 'scrooloose/nerdcommenter'


"--------------------------------------
"   快速更新替换符号
"--------------------------------------
" csw"  添加双引号
" yss'    整行添加单引号
" cs"'    双引号替换为单引号
" cs(]    括号替换为中括号
" sct'    标签替换为单引号
" ds' 删除单引号
Plugin 'tpope/vim-surround'


"--------------------------------------
" 多光标多行编辑
"--------------------------------------
" <C-n> 选中
" c   替换内容
" 例：检索 hello 选中 替换为 world --> fh<C-n>cworld
Plugin 'terryma/vim-multiple-cursors'


"--------------------------------------
" web HTML 插件
"--------------------------------------
Plugin 'othree/html5.vim'


"--------------------------------------
" 语法检查
"--------------------------------------
"Plugin 'scrooloose/syntastic'


"--------------------------------------
"   提高HTML和CSS的工作流
"--------------------------------------
Plugin 'mattn/emmet-vim'


"--------------------------------------
"   提供快速编写xml/html的能力, 如标签自动闭合
"--------------------------------------
Plugin 'othree/xml.vim'


"--------------------------------------
"   CSS3 高亮, 包括 stylus,Less,Sass
"--------------------------------------
Plugin 'hail2u/vim-css3-syntax'


"--------------------------------------
"   语法高亮(多种知名js库)
"--------------------------------------
Plugin 'othree/javascript-libraries-syntax.vim'


call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""" Vundle 插件管理 结束 """"""""""""""""""""""""""""""""""""""""""""""""

"打开文件类型检测功能、自动加载文件类型插件、自动设置缩进
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""" Vundle 插件设置 开始 """"""""""""""""""""""""""""""""""""""""""""""""

"--------------------------------------
"   < altercation/vim-colors-solarized(配色主题) 插件配置 >
"--------------------------------------
"激活 语法高亮
syntax enable
"主题配色方案
colorscheme solarized

"图形界面
if has('gui_running')
    "设置背景颜色为暗色
    set background=dark
"非图形界面
else
    "设置背景颜色为亮色
    "set background=light
    set background=dark
endif
"背景颜色切换(亮色和暗色切换)
call togglebg#map("<F1>")



"---------------------------------------------------
"   < vim-airline(状态栏美化) 插件配置 >
"---------------------------------------------------
let g:airline#extensions#tabline#left_sep = ' '
let g:girline#extensions#tabline#left_alt_sep = '|'

let g:airline_powerline_fonts=1
let g:airline_theme='jellybeans'


"---------------------------------------------------
"   < vim-indent-guides(缩进可视化) 插件配置 >
"---------------------------------------------------
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关 缩进可视化
nmap <silent> <leader>i <Plug>IndentGuidesToggle


"---------------------------------------------------
"   < godlygeek/tabular(文本对齐) 插件配置 >
"---------------------------------------------------
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a" :Tabularize /"<CR>
vmap <Leader>a" :Tabularize /"<CR>
nmap <Leader>a' :Tabularize /'<CR>
vmap <Leader>a' :Tabularize /'<CR>



"----------------------------------------------------------------------------
"   < bronson/vim-trailing-whitespace(代码行尾空格标红处理) 插件配置 >
"----------------------------------------------------------------------------
"   Mapping: <leader><space>
map <leader><space> :FixWhitespace<cr>



"---------------------------------------------------
"   < othree/javascirtp(js库语法高亮) 插件配置 >
"---------------------------------------------------
let g:used_javasecript_libs = 'jquery,react,vue'


"--------------------------------------
"   < scrooloose/syntastic(语法检查) 插件配置 >
"--------------------------------------
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"错误，侧边栏显示
"let g:syntastic_error_symbol = '>>'
"let g:syntastic_style_error_symbol='»'
"警告，侧边栏显示
"let g:syntastic_warning_symbol = '>'
"let g:syntastic_style_warning_symbol='•'

"let g:syntastic_always_populate_loc_list = 1
"错误窗口打开模式
"let g:syntastic_auto_loc_list = 1
"打开文件时,进行语法检查 默认不检查 0:不检查 1：检查
"let g:syntastic_check_on_open = 1
" 当执行（:wq）、（:x）（:ZZ）时跳过语法检查，（:w）检查
"let g:syntastic_check_on_wq = 0
"是否高亮显示语法错误 默认显示， 1：显示 0：不显示
"let g:syntastic_enable_highlighting = 0

"highlight SyntasticErrorSign guifg=white guibg=red

"HTML语法检查sudo npm install -g htmlhint
"let g:syntastic_html_checkers=['htmlhint']
"let g:syntastic_html_exec=

"CSS语法检查 sudo npm install -g PrettyCSS
"let g:syntastic_css_checkers=['prettycss']

"javascript语法检查 sudo npm install -g jslint
"let g:syntastic_javascirpt_checkers=['jslint']

"php语法检查
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']


"""""""""""""""""""""""""""""""""""""""""""" Vundle 插件设置 结束 """"""""""""""""""""""""""""""""""""""""""""""""

