"Behaviour
set hidden
set autoindent
set smartindent
set shiftwidth=4
"set smarttab
set tabstop=4
set softtabstop=4
set expandtab
"set nowrap
set mouse-=a
set splitright
set hlsearch
set incsearch
set ignorecase
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>
set clipboard+=unnamedplus

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
augroup END
