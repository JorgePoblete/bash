execute pathogen#infect()

syntax on

:colorscheme desert 
:set ai
:set nowrap
:set wildmode=longest,list,full
:set wildmenu
:set splitbelow
:set splitright
:set cursorline
:set noswapfile
:set encoding=iso-8859-1
:set fileencoding=iso-8859-1

:com! W w
:com! Q q

:autocmd FileType * set tabstop=4|set shiftwidth=4|set smartindent|set smarttab|set noexpandtab
:autocmd FileType python set tabstop=4|set shiftwidth=4|set smartindent|set smarttab|set expandtab
:autocmd FileType php set tabstop=4|set shiftwidth=4|set smartindent|set smarttab|set expandtab|highlight OverLength ctermbg=red ctermfg=white guibg=#592929|match OverLength /\%121v.\+/
:autocmd FileType javascript set tabstop=2|set shiftwidth=2|set smartindent|set smarttab|set expandtab
