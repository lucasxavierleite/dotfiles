" ... Deoplete
let g:deoplete#enable_at_startup = 1

" ... ... C/C++ completion
" ... ... Change clang binary path
"call deoplete#custom#var('clangx', 'clang_binary', '/usr/local/bin/clang')
"call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')

" ... ... ... Change clang options
"call deoplete#custom#var('clangx', 'default_c_options', '')
"call deoplete#custom#var('clangx', 'default_cpp_options', '')

" ... ... ... Enable UltiSnips
"call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])

" ... UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ... Tern
if exists('g:plugs["tern_for_vim"]')
    let g:tern_show_argument_hints = 'on_hold'
    let g:tern_show_signature_in_pum = 1
    autocmd FileType javascript setlocal omnifunc=tern#Complete
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
endif

" ... Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_c_config_file = '.config_c'
let g:syntastic_c_no_include_search = 1

" ... Colorizer.lua
"lua require'colorizer'.setup()

" ... Airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" ... ... Unicode symbols
"let g:airline_left_sep = 'Β»'
"let g:airline_left_sep = 'βΆ'
"let g:airline_right_sep = 'Β«'
"let g:airline_right_sep = 'β'
"let g:airline_symbols.crypt = 'π'
"let g:airline_symbols.linenr = 'β°'
"let g:airline_symbols.linenr = 'β'
"let g:airline_symbols.linenr = 'β€'
"let g:airline_symbols.linenr = 'ΒΆ'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = 'γ'
"let g:airline_symbols.branch = 'β'
"let g:airline_symbols.paste = 'Ο'
"let g:airline_symbols.paste = 'Γ'
"let g:airline_symbols.paste = 'β₯'
"let g:airline_symbols.spell = 'κ¨'
"let g:airline_symbols.notexists = 'Ι'
"let g:airline_symbols.whitespace = 'Ξ'

" ... ... Powerline symbols
let g:airline_left_sep = 'ξ°'
let g:airline_left_alt_sep = 'ξ±'
let g:airline_right_sep = 'ξ²'
let g:airline_right_alt_sep = 'ξ³'
let g:airline_symbols.branch = 'ξ '
let g:airline_symbols.readonly = 'ξ’'
let g:airline_symbols.linenr = 'β° '
let g:airline_symbols.maxlinenr = ' ξ‘'
let g:airline_symbols.dirty='β‘'

" ... ... Old vim-powerline symbols
"let g:airline_left_sep = 'β?'
"let g:airline_left_alt_sep = 'β?'
"let g:airline_right_sep = 'β?'
"let g:airline_right_alt_sep = 'β?'
"let g:airline_symbols.branch = 'β­ '
"let g:airline_symbols.readonly = 'β­€'
"let g:airline_symbols.linenr = 'β­‘'

" ... Etc
let NERDTreeShowHidden=1
