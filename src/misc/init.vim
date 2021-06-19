"        _________________
"       { S~E~T~T~I~N~G~S }

set noswapfile
set nobackup
set encoding=UTF-8
set showmatch
set hlsearch
set expandtab
set shiftwidth=4
set autoindent
set number
set ruler
set t_Co=256
set cursorline
set guifont=DroidSansMono\ Nerd\ Font\ 11
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lum]"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum]"
  set termguicolors
endif
set guifont=DroidSansMono\ Nerd\ Font\ 11
" set cc=80

syntax on
filetype plugin indent on
filetype plugin on

"        _______________
"       { P~L~U~G~I~N~S }

" [ List of vim-plug plugins ]
" https://github.com/nschurmann/configs/blob/master/.vim/plugins.vim

call plug#begin(stdpath('config') . '/plugged')
Plug 'junegunn/vim-easy-align'
" Plugin not available anymore?!
" Plug 'junegun/fzf'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'vim-airline/vim-airline'
Plug 'linkinpark342/xonsh-vim'
Plug 'daveyarwood/vim-alda'

" Nerdtree and plugins for it
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
  
call plug#end()

"    ___________________________
"   { C~O~C~E~X~T~E~N~S~I~O~N~S }
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-cmake', 'coc-css', 'coc-discord',
            \ 'coc-elixir', 'coc-eslint', 'coc-flutter', 'coc-gist', 'coc-go',
            \ 'coc-graphql', 'coc-html', 'coc-htmldjango', 'coc-java', 'coc-markdownlint',
            \ 'coc-powershell', 'coc-prettier', 'coc-python', 'coc-pydocstring',
            \ 'coc-sh', 'coc-svg', 'coc-sql', 'coc-toml', 'coc-xml', 'coc-yaml']

"     _______________________
"    { C~O~L~O~R~S~C~H~E~M~E }
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

"        _________________
"       { N~E~R~D~T~R~E~E }
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1
let NERDTreeShowHidden = 1
" Sym links
syn match NERDTreeLinkTarget #->.*# containedin=NERDTreeDir,NERDTreeFile
syn match NERDTreeLinkFile #.* ->#me=e-3 containedin=NERDTreeFile
syn match NERDTreeLinkDir #.*/ ->#me=e-3 containedin=NERDTreeDir

" File types


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

"        _______________________
"       { V~I~M~D~E~V~I~C~O~N~S }

"let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
