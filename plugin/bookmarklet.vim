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

" Command enable
command! -nargs=0 GenerateBookmarklet :call bookmarklet#GenerateBookmarklet()

let &cpo = s:save_cpo
unlet s:save_cpo
