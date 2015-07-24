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

py << EOF
import vim

# Get selected lines with visual mode
code="javascript:(function(){"
for i in vim.current.buffer:
  code+=i

code+="})()"

#Open new file
vim.command("vnew +enew")
#print code

#save bookmarklet on the new buffer
vim.current.buffer[0]=(code)

EOF
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
