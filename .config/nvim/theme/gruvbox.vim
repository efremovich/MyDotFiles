" Enable true color support
set termguicolors

" Vim airline theme
let g:airline_theme='gruvbox_material'

" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:.

" Set preview window to appear at bottom
set splitbelow

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

" Set floating window to be slightly transparent
set winbl=10
" ============================================================================ "
" ===                      CUSTOM COLORSCHEME CHANGES                      === "
" ============================================================================ "
" Add custom highlights in method that is executed every time a colorscheme is sourced
" See https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f for details
function! TrailingSpaceHighlights() abort
  highlight Trail ctermbg=red guibg=red
  call matchadd('Trail', '\s\+$', 100)
endfunction

autocmd! ColorScheme * call TrailingSpaceHighlights()

function! s:custom_jarvis_colors()
  " coc.nvim color changes
  hi link CocErrorSign WarningMsg
  hi link CocWarningSign Number
  hi link CocInfoSign Type

  " Make background transparent for many things
  "hi Normal ctermbg=NONE guibg=NONE
  hi NonText ctermbg=NONE guibg=NONE
  hi LineNr ctermfg=NONE guibg=NONE
  hi SignColumn ctermfg=NONE guibg=NONE
  "hi StatusLine guifg=#16252b guibg=#6699CC
  "hi StatusLineNC guifg=#16252b guibg=#16252b

  " Try to hide vertical spit and end of buffer symbol
  "hi VertSplit gui=NONE guifg=#17252c guibg=#17252c
  "hi EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c

  " Customize NERDTree directory
  "hi NERDTreeCWD guifg=#99c794

  " Make background color transparent for git changes
  "hi SignifySignAdd guibg=NONE
  "hi SignifySignDelete guibg=NONE
  "hi SignifySignChange guibg=NONE

  " Highlight git change signs
  "hi SignifySignAdd guifg=#99c794
  "hi SignifySignDelete guifg=#ec5f67
  "hi SignifySignChange guifg=#c594c5
endfunction

autocmd! ColorScheme * call s:custom_jarvis_colors()

" Call method on window enter
augroup WindowManagement
  autocmd!
  autocmd WinEnter * call Handle_Win_Enter()
augroup END

" Change highlight group of preview window when open
function! Handle_Win_Enter()
  if &previewwindow
    setlocal winhighlight=Normal:MarkdownError
  endif
endfunction
" Important!!

if has('termguicolors')
  set termguicolors
endif
set background=dark
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_cursor = 'red'
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_current_word = 'bold'
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_menu_selection_background = 'red'
colorscheme gruvbox-material


