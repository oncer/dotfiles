let g:clang_exec='clang++'
let g:clang_user_options='|| exit 0'
filetype plugin on

set modeline

" Bell
set noerrorbells visualbell t_vb=

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

" Do not put two spaces after punctuation marks
set nojoinspaces

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
let g:airline_theme="wombat"

" filetype specific config
autocmd FileType cpp source ~/.vim/cpp.vim
autocmd FileType py  source ~/.vim/py.vim
autocmd FileType wiki source ~/.vim/wiki.vim
autocmd FileType jade source ~/.vim/jade.vim
autocmd FileType haxe source ~/.vim/haxe.vim
autocmd FileType text source ~/.vim/txt.vim
autocmd FileType javascript source ~/.vim/javascript.vim

" YCM
let g:ycm_filetype_specific_completion_to_disable = {
			\ 'cs': 1,
			\}
let g:ycm_filepath_completion_use_working_dir = 1

" CTRLP
set wildignore+="*/build/*"
let g:ctrlp_custom_ignore = {
			\ 'dir': '\v[\/](\.git|\.hg|\.svn|build|win32)$',
			\ 'file': '\v\.(exe|so|dll|zip|png|wav|o)$',
			\ }
