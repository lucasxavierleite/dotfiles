"Plugins configuration file

call plug#begin()

" Colorschemes
Plug 'dylanaraps/wal.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim',{ 'as' : 'dracula' }
Plug 'altercation/vim-colors-solarized'
Plug 'rakr/vim-one'
Plug 'Mizux/vim-colorschemes'
Plug 'tanvirtin/monokai.nvim'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Productivity
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'mbbill/undotree'
Plug 'norcalli/nvim-colorizer.lua'

" Git
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'

" Autocomplete and Snippets
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/deoplete-clangx'
"Plug 'Shougo/neoinclude.vim'
"Plug 'deoplete-plugins/deoplete-jedi'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

" Web development
"Plug 'mattn/emmet-vim'
Plug 'rstacruz/vim-node-import'
"Plug 'rstacruz/vim-closer'

" Syntax
Plug 'terminalnode/sway-vim-syntax'
Plug 'theRealCarneiro/hyprland-vim-syntax'

call plug#end()
