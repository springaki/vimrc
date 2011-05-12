"vundle 使用
filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()

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

"-----編集-----
"insert抜けるとIMEオフ
"set noimdisable
"set iminsert=0 imsearch=0
"set noimcmdline
"inoremap <silent><ESC><ESC>:set iminsert=0<CR>
"set imdisable

let g:rsenseHome = "/Users/aki_/opt"

"Ruby/Rails関連 Bundle
Bundle 'rails.vim'
Bundle 'cucumber.zip'

"https://github.com/vim-ruby/vim-ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'quickrun.vim'


"-----入力補完-----
Bundle 'neocomplcache'
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 30
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_enable_underbar_completion = 1
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

Bundle 'neco-look'
Bundle 'ujihisa/shadow.vim'

"omni補完を使う設定
filetype on
filetype indent on
filetype plugin on


"unite
Bundle 'unite.vim'
Bundle 'h1mesuke/unite-outline'
Bundle 'smartchr'

nmap <C-k> :bN<CR>
nmap <C-j> :bn<CR>
