let g:clang_exec='clang++'
let g:clang_user_options='|| exit 0'
filetype plugin on

set modeline

" File types
au BufNewFile,BufRead *.as set filetype=actionscript

" LaTeX Suite
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = 'latex'
let g:Tex_ViewRule_pdf = 'evince'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode "$*"'
let g:Tex_MultipleCompileFormats = 'dvi,pdf'
let g:Tex_DefaultTargetFormat = 'pdf'

" Pathogen
execute pathogen#infect()

" Indent
set cindent
set cinoptions=g0
