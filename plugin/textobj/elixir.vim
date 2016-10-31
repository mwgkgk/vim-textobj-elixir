if exists('g:loaded_textobj_elixir_plugin')
  finish
endif
let g:loaded_textobj_elixir_plugin = 1

let s:save_cpo = &cpo
set cpo&vim

let g:textobj_elixir_more_mappings = get(g:, 'textobj_elixir_more_mappings', 0)

if ! g:textobj_elixir_more_mappings
    " ar/ir mapping only. keep mapping simple. "{{{
    call textobj#user#plugin('elixir', {
        \
        \ 'any' : {
        \      'select-a' : 'ar', '*select-a-function*' : 'textobj#elixir#any_select_a',
        \      'select-i' : 'ir', '*select-i-function*' : 'textobj#elixir#any_select_i',
        \   },
        \
        \ })
    "}}}
else
    " mapping to match all, module/class, loop, control or do only block "{{{
    call textobj#user#plugin('elixir', {
        \
        \ 'any' : {
        \      'select-a' : 'arr', '*select-a-function*' : 'textobj#elixir#any_select_a',
        \      'select-i' : 'irr', '*select-i-function*' : 'textobj#elixir#any_select_i',
        \   },
        \
        \ 'definition' : {
        \      'select-a' : 'aro', '*select-a-function*' : 'textobj#elixir#object_definition_select_a',
        \      'select-i' : 'iro', '*select-i-function*' : 'textobj#elixir#object_definition_select_i',
        \   },
        \
        \ 'loop' : {
        \      'select-a' : 'arl', '*select-a-function*' : 'textobj#elixir#loop_block_select_a',
        \      'select-i' : 'irl', '*select-i-function*' : 'textobj#elixir#loop_block_select_i',
        \   },
        \
        \ 'control' : {
        \      'select-a' : 'arc', '*select-a-function*' : 'textobj#elixir#control_block_select_a',
        \      'select-i' : 'irc', '*select-i-function*' : 'textobj#elixir#control_block_select_i',
        \   },
        \
        \ 'do' : {
        \      'select-a' : 'ard', '*select-a-function*' : 'textobj#elixir#do_block_select_a',
        \      'select-i' : 'ird', '*select-i-function*' : 'textobj#elixir#do_block_select_i',
        \   },
        \ })
    "}}}
endif

let &cpo = s:save_cpo
unlet s:save_cpo
