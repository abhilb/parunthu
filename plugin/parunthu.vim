
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

function! s:CurateScript()
    "Remove all tags make the script show as shown in Hdevelop
    echom "Editing the script"
    echom string(line('$'))
    let l:line_num = 1
    while l:line_num <= line("$")
        let l:line_text = getline(l:line_num)
        let l:mod_line_text = substitute(l:line_text, "<c>", "", "")
        let l:mod_line_text = substitute(l:mod_line_text, "</c>", "", "")
        call setline(l:line_num, l:mod_line_text)        
        let l:line_num = l:line_num + 1
    endwhile

endfunction


noremap <silent> <leader>ch : call <SID>CurateScript()<CR>

let &cpo = s:cpo_save
unlet s:cpo_save
