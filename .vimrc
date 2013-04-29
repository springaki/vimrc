"NeoBundle 使用
set nocompatible
filetype off


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#rc(expand('~/.vim/bundle/'))

"NeoBundle 'Shougo/clang_complete.git'
NeoBundle 'Shougo/echodoc.git'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'Shougo/neocomplcache-snippets-complete'
NeoBundle 'Shougo/neobundle.vim.git'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'Shougo/vim-vcs.git'
NeoBundle 'Shougo/vimfiler.git'
NeoBundle 'Shougo/vimshell.git'
NeoBundle 'Shougo/vinarise.git'
NeoBundle 'git://github.com/h1mesuke/unite-outline.git'


""""""" vim-scripts repos
" プロジェクトのツリー表示
NeoBundle 'vim-scripts/project.tar.gz'

filetype plugin on
filetype indent on
set shiftwidth=2

"-----基本設定-----
set backspace=indent,eol,start "バックスペースで何でも消せる

"クリップボードをOSと連携
set clipboard=unnamed

"-----検索関連-----
set hlsearch       "検索の強調表示

"-----表示系設定-----
set cursorline     "カーソル行をハイライト
set hidden         "編集中でも他のファイルを開けるようにする
set number         "行番号を表示

"行末のスペースを可視化
set list
set listchars=tab:>-,eol:\ ,trail:-

"全角スペースを白で可視化
highlight ZenkakuSpace ctermbg=white guibg=white 
match ZenkakuSpace /　/

"カラースキーマ適用
syntax on
colorscheme darkblue

"ステータスラインの表示設定
:set laststatus=2
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"-----検索系設定-----
set cursorline     "カーソル行をハイライト
set incsearch      "インクリメンタルサーチ
set tabstop=2      "タブの表示を2に
set ts=2           "タブのスペースを２に
set showmatch      "対応する括弧を表示する
set expandtab

"-----編集-----
"insert抜けるとIMEオフ
"set noimdisable
"set iminsert=0 imsearch=0
"set noimcmdline
"inoremap <silent><ESC><ESC>:set iminsert=0<CR>
"set imdisable

"保存時にtabをスペースに変換
"autocmd BufWritePre * :%s/\t/  /ge


let g:rsenseHome = "/Users/aki_/opt"

"Ruby/Rails関連 NeoBundle
NeoBundle 'rails.vim'
NeoBundle 'cucumber.zip'

"https://github.com/vim-ruby/vim-ruby
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'quickrun.vim'


NeoBundle 'ZenCoding.vim'
"-----入力補完-----
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 30
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_enable_underbar_completion = 1
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neocomplcache_snippets_dir='~/.vim/bundle/vim-snippets/snippets'

NeoBundle 'neco-look'
NeoBundle 'ujihisa/shadow.vim'

NeoBundle 'smartchr'

""" unite.vim
" 入力モードで開始する
" let g:unite_enable_start_insert=1
" バッファ一覧
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

" アウトライン
nnoremap <silent> ,uo :<C-u>Unite outline<CR>

" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

nmap <C-k> :bN<CR>
nmap <C-j> :bn<CR>
"nmap <C-w> :bdelete<CR>
