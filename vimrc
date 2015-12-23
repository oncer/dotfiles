let g:clang_exec='clang++'
let g:clang_user_options='|| exit 0'
filetype plugin on

" Tabs
set ts=2 sts=2 sw=2 noexpandtab

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

" CTags script
source ~/.vim/ctags.vim
let generate_tags=1
let g:ctags_statusline=1
