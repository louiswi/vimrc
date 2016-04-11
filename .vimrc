set nu
if &t_Co > 1
      syntax enable
      endif
syntax on
map <F7> :NERDTreeToggle<CR>
set hlsearch
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"显示标签列表
let Tlist_Auto_Open=0
:noremap <F4> :set hlsearch! hlsearch?<CR>
execute pathogen#infect()
"自动缩进
set autoindent
"类似C语言风格的缩进
set cindent
"智能缩进:每一行都和前一行有相同的缩进量,
"同时这种缩进形式能正确的识别出花括号,当遇到右花括号（}）,
"则取消缩进形式。此外还增加了识别C语言关键字的功能。
"如果一行是以#开头的(比如宏)，那么这种格式将会被特殊对待而不采用缩进格式
set smartindent
"For Python Programmers
"autocmd FileType python set textwidth=79 " PEP-8 Friendly

"把输入的tab自动转换成空格，Python用户必用~
set expandtab 
"一个tab键占据4个空格
set tabstop=4
"一开始,插入的就是4个空格,此时一旦你再按下一次tab,这次的四个空格就会和上次的四个空格组合起来变成一个制表符
set softtabstop=4
"每一级自动缩进的空格数
set shiftwidth=4
"根据文件类型设定缩进,覆盖掉默认的~
"autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79 set omnifunc=pythoncomplete#Complete
let Tlist_Auto_Highlight_Tag=1  
let Tlist_Auto_Open=1  
let Tlist_Auto_Update=1  
let Tlist_Display_Tag_Scope=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_Enable_Dold_Column=1  
let Tlist_File_Fold_Auto_Close=1  
let Tlist_Show_One_File=1  
let Tlist_Use_Right_Window=1  
let Tlist_Use_SingleClick=1  
let g:pydiction_location = '/root/.vim/bundle/complete-dict'
let g:pydiction_menu_height = 3

nnoremap <silent> <F8> :TlistToggle<CR>
   
filetype on
filetype plugin on
filetype indent on
"autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79 set omnifunc=pythoncomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete  
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS  
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags  
autocmd FileType php set omnifunc=phpcomplete#CompletePHP  
autocmd FileType c set omnifunc=ccomplete#Complete

