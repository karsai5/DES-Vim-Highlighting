" Vim syntax file
" Language: Datalog DES
" Maintainer: Linus Karsai
" Latest Revision: 18 March 2016

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "dl"
syn match celComment "%.*$" contains=celTodo

syn match celString "[a-z][A-Za-z0-9_]*"
syn match celDesc "[A-Z_][a-zA-Z]*"
syn match predicate "[a-z][A-Za-z0-9_]*(" contains=celHip
syn match celHip contained "[a-z][A-Za-z0-9_]*"

" Integer with - + or nothing in front
syn match celNumber '\d\+'
syn match celNumber '[-+]\d\+'

" Floating point number with decimal no E or e 
syn match celNumber '[-+]\d\+\.\d*'

" Floating point like number with E and no decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number with E and decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

hi def link celTodo        Todo
hi def link celComment     Comment
hi def link celBlockCmd    Statement
hi def link celHip         Type
hi def link celString      Constant
hi def link celDesc        PreProc
hi def link celNumber      Constant
