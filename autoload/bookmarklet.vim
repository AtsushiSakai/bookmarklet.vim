"=============================================================================
" File: bookmarklet.vim
" Author: AtsushiSakai
" Created: 2015-07-24
"=============================================================================

scriptencoding utf-8

if !exists('g:loaded_bookmarklet')
    finish
endif
let g:loaded_bookmarklet = 1

let s:save_cpo = &cpo
set cpo&vim

function! bookmarklet#GenerateBookmarklet()
" generate bookmarklet
echon "hello bookmarklet"
python << EOF
import vim

# Get selected lines with visual mode
var=""
for i in vim.current.range:
    var+=i

print var



EOF
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
