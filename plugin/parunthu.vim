
" File: parunthu.vim
" Author: Abhilash Babu
" Version: 0.1.0
" email: abhilashbabuj at gmail dot com
" Copyright: Copyright (c) 2017-2018 Abhilash Babu
" License: MIT license


if exists('loaded_parinthu')
    finish
endif

let loaded_parithu = 1
let s:cpo_save = &cpo
set cpo&vim

function! s:RemoveTags()
endfunction

autocmd BufRead *.hdev call s:RemoveTags()

let &cpo = s:cpo_save
unlet s:cpo_save
