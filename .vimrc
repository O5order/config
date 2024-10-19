"call plug#begin('~/.vim/plugged')
"Plug 'catppuccin/nvim', { 'branch': 'main' }
"Plug 'preservim/nerdtree'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'itchyny/lightline.vim'
"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"Plug 'jiangmiao/auto-pairs'
"Plug 'vim-airline/vim-airline'
"Plug 'Yggdroot/indentLine'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'honza/vim-snippets'
"Plug 'w0rp/ale'
"call plug#end()
"
"let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
"let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进
"
"
"" Make <CR> auto-select the first completion item and notify coc.nvim to
"" format on enter, <cr> could be remapped by other vim plugin
""inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
""				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"    
"
"
""inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<r>"
""inoremap <expr><TAB> pumvisible() ? "\<C-p>" : "\<Tab>"
"
""set laststatus=2  "永远显示状态栏
"let g:airline_powerline_fonts = 1  " 支持 powerline 字体
""let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer
"let g:airline#extensions#tabline#formatter = 'jsformatter'
"let g:airline_theme = 'angr'  " murmur配色
""syntax enable
"let g:coc_disable_startup_warning = 1
""映射文件保存与退出  
"nmap fw     :w<CR>  
"nmap fq     :q<CR>  
"nmap fwq    :wq<CR>  
"
"if !exists('g:airline_symbols')
"	let g:airline_symbols = {}
"endif
"
""let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}
""au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
""au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})
""
""map <C-n> :NERDTreeToggle<CR>
""
""
"set encoding=utf-8
"set hidden
"set shortmess+=c
"set updatetime=100
"set smartindent " 开启新行时使用智能自动缩进
"set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
"set fileformats=unix,dos,mac
"set nu
"set mouse=a
"
"" Use `[g` and `]g` to navigate diagnostics
"" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
"" Use Leader+h to show documentation in preview window.
"" nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>
"
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"        execute 'h '.expand('<cword>')
"           elseif (coc#rpc#ready())
"               call CocActionAsync('doHover')
"           else
"               execute '!' . &keywordprg . " " . expand('<cword>')
"        endif
" endfunction
"
"" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
"function! s:check_back_space() abort
"          let col = col('.') - 1
"          return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"
"=========================== neovim version v0.7.2
" !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
call plug#begin('~/.config/vim_plug/plugged')
    Plug 'honza/vim-snippets'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-refactor'
    Plug 'nvim-treesitter/playground'
    Plug 'romgrk/nvim-treesitter-context'
    Plug 'DanilaMihailov/beacon.nvim'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-python/python-syntax'
    Plug 'vim-scripts/ctags.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdcommenter'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'sainnhe/gruvbox-material'
    Plug 'Yggdroot/indentLine'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'majutsushi/tagbar'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

filetype plugin on
" set ambiwidth=double
" set t_ut= "
set showmatch " highlight for matched parentheses
set matchtime=1 " match time for parentheses
set noshowmode "do not show edit mode in cmd
set novisualbell
set noerrorbells
set report=0
set ignorecase " ignore case when searching
set nobackup
set autoread
set nocompatible
set backspace=2
set showcmd
set hlsearch
syntax on

" Tab settings
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab

" indent method
" set cindent
set smartindent

" Set Mouse
set mouse+=a
" set selection=exclusive
" set selectmode=mouse,key

set history=1000 "设置历史记录条数
" close welcome page
set shortmess=atI
set clipboard+=unnamed

" VIM Encoding Method
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,latin1
" set fileencoding=gb2312
set fileencoding=utf-8
set termencoding=utf-8

set signcolumn=yes
set cmdheight=1
set ruler
set nu
set cursorline

" reset cursor when vim exits
" au VimLeave * set guicursor=a:ver25-blinkon0
set foldmethod=indent
set foldlevelstart=99 " set close fold at start

" coc.nvim settings
set hidden
set nowritebackup
set updatetime=300
set shortmess+=c

" Line Settings
set wrap

" +================================ colorscheme =====================================+ "
set t_Co=256
set termguicolors
set background=dark
hi ExtraWhitespace ctermbg=red guibg=red
hi Todo ctermbg=red guibg=red
let g:airline_theme = 'gruvbox_material'
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material


au FileType gitcommit,gitrebase let g:gutentags_enabled=0
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:python_highlight_all = 1
" +================================ 可视化缩进 =====================================+ "

let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进
au FileType json let g:indentLine_setConceal = 0 " set default conceal for json

" +================================== NERDTree =======================================+ "
" autocmd vimenter * NERDTree  "自动开启Nerdtree
" autocmd vimenter * NERDTreeToggle
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" 设置树的显示图标
" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
""Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" +================================== 按键映射 =======================================+ "
" self key map:
" <leader>s : open key
" <leader>d : close key
" <leader>e : norm key
" quicky paste
noremap <leader>sp :set paste<CR>i
nnoremap <leader>dp :set nopaste<CR>
" fold method change
nnoremap <leader>sf :set foldmethod=manual<CR>
nnoremap <leader>df :set foldmethod=indent<CR>
" enable and disable mouse support
nnoremap <leader>sm :set mouse+=a<CR>
nnoremap <leader>dm :set mouse=<CR>
" match and undo trailing
nnoremap <leader>st :match ExtraWhitespace /\s\+$/<CR>/\s\+$/<CR>
nnoremap <leader>dt :match<CR>:noh<CR>
" close highlight
nnoremap <leader>dh :noh<CR>
inoremap <silent> jj <Esc>
inoremap <M-h> <left>
inoremap <M-j> <down>
inoremap <M-k> <up>
inoremap <M-l> <right>
"exit
nmap fw     :w<CR>  
nmap fq     :q<CR>  
nmap fwq    :wq<CR>  

" swap
vnoremap <C-C> <ESC>`.``gvp``P
" plug key map
nnoremap <silent> <F4> :TagbarToggle<CR>  " tagbar
nnoremap <F3> :NERDTreeToggle<CR>:NERDTreeRefreshRoot<CR> " nerdtree

" +================================== coc.nvim  ======================================+ "
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
if $CONDA_PREFIX == ""
  let s:current_python_path=$CONDA_PYTHON_EXE
else
  let s:current_python_path=$CONDA_PREFIX.'/bin/python'
endif
call coc#config('python', {'pythonPath': s:current_python_path})
" +=================================== tagbar =======================================+ "

let g:tagbar_width=30
" +================================== airline =======================================+ "
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_idx_format = {}
let g:airline#extensions#tabline#buffer_idx_mode = 3
let g:airline#extensions#keymap#enabled = 1
nmap <Leader>1g <Plug>AirlineSelectTab01
nmap <Leader>2g <Plug>AirlineSelectTab02
nmap <Leader>3g <Plug>AirlineSelectTab03
nmap <Leader>4g <Plug>AirlineSelectTab04
nmap <Leader>5g <Plug>AirlineSelectTab05
nmap <Leader>6g <Plug>AirlineSelectTab06
nmap <Leader>7g <Plug>AirlineSelectTab07
nmap <Leader>8g <Plug>AirlineSelectTab08
nmap <Leader>9g <Plug>AirlineSelectTab09
nmap <Leader>10g <Plug>AirlineSelectTab10
nmap <Leader>11g <Plug>AirlineSelectTab11
nmap <Leader>12g <Plug>AirlineSelectTab12
nmap <Leader>13g <Plug>AirlineSelectTab13
nmap <Leader>14g <Plug>AirlineSelectTab14
nmap <Leader>15g <Plug>AirlineSelectTab15
nmap <Leader>16g <Plug>AirlineSelectTab16
nmap <Leader>17g <Plug>AirlineSelectTab17
nmap <Leader>18g <Plug>AirlineSelectTab18
nmap <Leader>19g <Plug>AirlineSelectTab19
nmap <Leader>20g <Plug>AirlineSelectTab20
nmap <Leader>21g <Plug>AirlineSelectTab21
nmap <Leader>22g <Plug>AirlineSelectTab22
nmap <Leader>23g <Plug>AirlineSelectTab23
nmap <Leader>24g <Plug>AirlineSelectTab24
nmap <Leader>25g <Plug>AirlineSelectTab25
nmap <Leader>26g <Plug>AirlineSelectTab26
nmap <Leader>27g <Plug>AirlineSelectTab27
nmap <Leader>28g <Plug>AirlineSelectTab28
nmap <Leader>29g <Plug>AirlineSelectTab29
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab
nmap <leader>q :bp<cr>:bd #<cr>
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" function JumpBuf()
"     buffers
"     let g:buffer_id = input('Enter buffer: ')
"     execute \"buffer\" g:buffer_id
" endfunction


" +=============================== NERD Commenter ====================================+ "
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
au FileType python let g:NERDSpaceDelims = 0

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1


" +=============================== FzF ====================================+ "

let g:fzf_buffers_jump = 1
nnoremap <leader>x :Buffer<CR>
let g:fzf_preview_window = ['hidden,right,50%,<70(up,40%)', 'ctrl-/']
