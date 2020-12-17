let g:floaterm_keymap_toggle = '<F6>'
let g:floaterm_keymap_next   = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_new    = '<F9>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

nmap <space>ft :FloatermNew --wintype=bottom --height=6<CR>
nmap <space>fg :FloatermNew lazygit<CR>
nmap <space>fd :FloatermNew lazydocker<CR>
nmap <space>fr :FloatermNew ranger<CR>
