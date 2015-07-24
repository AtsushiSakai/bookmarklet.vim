"=============================================================================
" File: bookmarklet.vim
" Author: AtsushiSakai
" Created: 2015-07-24
"=============================================================================

scriptencoding utf-8

"if !exists('g:loaded_bookmarklet')
  ""  finish
""endif
""let g:loaded_bookmarklet = 1

let s:save_cpo = &cpo
set cpo&vim

function! bookmarklet#GenerateBookmarklet()
" generate bookmarklet

python << EOF
import vim

# Get selected lines with visual mode
var="javascript:(function(){"
for i in vim.current.buffer:
    var+=i

var+="})()"

#Open new file
vim.command("vnew +enew")
#print var

#save bookmarklet on the new buffer
vim.current.buffer[0](var)

EOF
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
