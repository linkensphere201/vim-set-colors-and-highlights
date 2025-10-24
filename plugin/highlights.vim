" Saving current highlights requires '!' in 'viminfo' option.

if v:version < 702 || exists('g:loaded_highlightmultiple') || &cp
  finish
endif
let g:loaded_highlightmultiple = 1

command! -nargs=* -range Highlight call highlights#Highlight('<args>')