" Vim compiler file
" Compiler:     Crestron SIMPL+
" Maintainer:   Alex McLain <alex@alexmclain.com>
" Last Change:  2012 Dec 17

if exists("current_compiler")
  finish
endif
let current_compiler = "crestron"

"if exists(":CompilerSet") != 2		" older Vim always used :setlocal
"  command -nargs=* CompilerSet setlocal <args>
"endif

CompilerSet makeprg=spluscc\ \\build\ \"%:p\"\ \\target\ series2\ series3

"CompilerSet errorformat=%E%f:%l:\ %m,%-Z%p^,%-C%.%#,%-G%.%#
CompilerSet errorformat=\.*
