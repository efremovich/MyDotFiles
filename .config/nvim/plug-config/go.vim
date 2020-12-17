let g:go_term_mode = "split"
let g:go_term_height = 30
let g:go_term_width = 30
let g:go_term_enabled = 1

" Go-vim plugin
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"


" Go-Specific
au FileType go nmap <leader>i <Plug>(go-install)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>e <Plug>(go-rename)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>l :GoLint<CR>
au FileType go nmap <leader>q :GoImport<space>
au FileType go nmap <leader>f <Plug>:GoImpl<space>
au FileType go nmap <leader>ff <Plug>(go-implements)
au FileType go vmap <leader>r :GoAddTags<space>
au FileType go vmap <leader>p :GoPlay<CR>
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>s <Plug>(go-install)
"au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>v <Plug>(go-vet)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>gs <Plug>(go-doc-split)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader><leader>g :GoDecls<CR>
au FileType go nmap <F9> :GoDebugBreakpoint<CR>
au FileType go nmap <F5> :GoDebugContinue<CR>
au FileType go nmap <F11> :GoDebugStep<CR>
au FileType go nmap <F10> :GoDebugNext<CR>
set autowrite

