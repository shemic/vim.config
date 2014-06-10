"=============================
" vim配置文件v1.0
" 
"=============================

let mapleader = ','
let g:mapleader = ','

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" fonts字体设置
set guifont=Monaco:h20

" history长度
set history=2000

" 保留屏幕
set t_ti= t_te=

" 设置语法高亮和主题 light
syntax enable
syntax on
set background=dark 
colorscheme solarized
set t_Co=256
"color test
""在状态栏显示正在输入的命令
set showcmd
" Show current mode
set showmode

" 设置行号
set number

" 设置Tab键的宽度
set tabstop=4
set shiftwidth=4
set softtabstop=4             
set smarttab      
set expandtab

"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" 默认方向键左右可以切换buffer
nnoremap <TAB> :MBEbn<CR>
noremap <leader>bn :MBEbn<CR>
noremap <leader>bp :MBEbp<CR>
noremap <leader>bd :MBEbd<CR>


" 设置编码
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set termencoding=utf-8
set ffs=unix,dos,mac
" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
" 合并两行中文时，不在中间加空格：
set formatoptions+=B
" 开启鼠标。。。好吧，无法成为完美的键盘党
"set mouse=a
" 设置搜索高亮 
set hls
" 设置当前行高亮
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white


""为方便复制，用<F5>开启/关闭行号显示:
function! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc
nnoremap <F5> :call HideNumber()<CR>


"=========================================
"svn
"=========================================

"更新当前目录的代码
noremap <F2>    :!svn up <cr>
"提交SVN(当前目录)
map <F3>    :!svn ci -m "robin commit" <cr>
"提交SVN(当前文件)
map <F4>    :!svn ci -m "robin commit" %<cr>

map <leader>g <S-g>
