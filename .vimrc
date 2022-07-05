set mouse=
syntax on

set modeline
set expandtab
set autoindent
set ignorecase
set smartcase

autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType fortran setlocal shiftwidth=3 tabstop=3 expandtab
autocmd FileType c setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType make setlocal shiftwidth=8 tabstop=8 noexpandtab
autocmd FileType julia setlocal shiftwidth=3 tabstop=3 expandtab
autocmd FileType sh setlocal shiftwidth=3 tabstop=3 expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType markdown setlocal nospell

