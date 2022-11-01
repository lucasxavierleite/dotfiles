" Move around
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <C-k> <C-W>k
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-l> <C-W>l

" Indentation
"inoremap <silent> <Tab> <C-o>:><CR>
inoremap <silent> <S-Tab> <C-o>:<<CR>
vnoremap <silent> <Tab> :><CR>
vnoremap <silent> <S-Tab> :<<CR>

" Tabs
nmap <silent> <Tab> :tabn<CR>
nmap <silent> <S-Tab> :tabp<CR>

" Trees
nmap <C-t> :NERDTreeToggle<CR>
map <C-u> :UndotreeToggle<CR>

" Edit configuration files
nmap <silent> <leader>er :vsplit $MYVIMRC<CR>
nmap <silent> <leader>ev :vsplit ~/.config/nvim/rc<CR>
nmap <silent> <leader>sv :source $MYVIMRC <bar> AirlineRefresh<CR>

" Misc.
nmap <silent> <leader>q :SyntasticToggleMode<CR>

map <C-_> <leader>c<space>
map <C-c> <leader>c<space>
map <leader>c <leader>c<space>
map %% v%

map <leader>d :set background=dark<CR>
map <leader>l :set background=light<CR>
