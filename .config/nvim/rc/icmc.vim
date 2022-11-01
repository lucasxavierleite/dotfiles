" ICMC Processor Assembly language
au BufNewFile,BufRead *.asm set syntax=icmc
let g:syntastic_mode_map = {
            \ 'mode': 'active',
            \ 'passive_filetypes': ['asm'] }
map <F5> :!run-icmc %<CR>
