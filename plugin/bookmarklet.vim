"=============================================================================
" File: bookmarklet.vim
" Author: AtsushiSakai
" Created: 2015-07-24
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_bookmarklet')
    finish
endif
let g:loaded_bookmarklet = 1

let s:save_cpo = &cpo
set cpo&vim

function! bookmarklet_test()
echon "hellow book marklet"
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
