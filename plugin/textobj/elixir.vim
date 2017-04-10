if exists('g:loaded_textobj_elixir_plugin')
  finish
endif
let g:loaded_textobj_elixir_plugin = 1

let s:save_cpo = &cpo
set cpo&vim

call textobj#user#plugin('elixir', {
    \ 'any' : {
    \      'select-a' : 'ab', '*select-a-function*' : 'textobj#elixir#any_select_a',
    \      'select-i' : 'ib', '*select-i-function*' : 'textobj#elixir#any_select_i',
    \   },
    \ })

let &cpo = s:save_cpo
unlet s:save_cpo
