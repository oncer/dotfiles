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

" CTags script
"source ~/.vim/ctags.vim
"let generate_tags=1
"let g:ctags_statusline=1

let g:airline#extensions#tagbar#enabled = 1
set laststatus=2
let g:airline_powerline_fonts=1

" filetype specific config
autocmd FileType cpp source ~/.vim/cpp.vim
autocmd FileType py  source ~/.vim/py.vim
autocmd FileType wiki source ~/.vim/wiki.vim

" YCM
let g:ycm_filetype_specific_completion_to_disable = {
			\ 'cs': 1
			\}

