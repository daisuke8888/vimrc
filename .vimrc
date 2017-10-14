set encoding=utf-8  "ファイル読み込み時の文字コードの設定
set fileencodings=iso-2022-jp,iso-2022-jp-2,utf-8,euc-jp,sjis   "読み込み時の文字コードの自動判別。左側が優先される
scriptencoding utf-8    "Vim scriptないでマルチバイト文字を使う場合の設定
set fileformats=unix,dos,mac    "改行コードの自動判別。左側が優先される
set ambiwidth=double    "□や○文字が崩れる問題を解決

set expandtab   "タブ入力を複数の空白入力に置き換える
set tabstop=4   "画面上でタブ文字が占める幅
set autoindent  "改行時に前の行のインデントを継続する
set smartindent "改行時に前の行の構文をチェックし次の行のインデントを増幅する
set shiftwidth=4    "smartindentで増幅する幅

set cursorline  "カーソルラインをハイライト
set backspace=indent,eol,start  "バックスペースキーの有効化

set showmatch   "括弧の対応関係を一瞬表示する
source $VIMRUNTIME/macros/matchit.vim   "Vimの「％」を拡張する

set noerrorbells
set visualbell
set viminfo=

syntax enable
colorscheme slate

" ペースト設定
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
