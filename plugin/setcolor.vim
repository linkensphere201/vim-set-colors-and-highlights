" Set the current color scheme based on time of day:
"   :SetColors now
if v:version < 700 || exists('g:loaded_setcolors') || &cp
  finish
endif
let g:loaded_setcolors = 1

" Add SetColors command 
command! -nargs=* SetColors call s:SetColors('<args>')

" Add NextColor map
nnoremap <S-C> :call setcolor#NextColor(0)<CR>
