let g:clang_exec='clang++'
let g:clang_user_options='|| exit 0'
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/local_vimrc'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tikhomirov/vim-glsl'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set modeline
set encoding=utf-8

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

" Do not put two spaces after punctuation marks
set nojoinspaces

" Indent
set cindent
set cinoptions=g0

" CTags script
"source ~/.vim/ctags.vim
"let generate_tags=1
"let g:ctags_statusline=1
"


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
autocmd BufRead *wscript source ~/.vim/py.vim

" YCM
let g:ycm_filetype_specific_completion_to_disable = {
			\ 'cs': 1,
			\}
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_server_python_interpreter = "/usr/bin/python"
let g:ycm_extra_conf_globlist = [ '/d/Projekte/Personal/castle2/*',
				\ '/c/Projects/Personal/castle2/*']
let g:ycm_clangd_args = ['--clang-tidy=0']

" CTRLP
set wildignore+="*/build/*"
let g:ctrlp_custom_ignore = {
			\ 'dir': '\v[\/](\.git|\.hg|\.svn|build|win32)$',
			\ 'file': '\v\.(exe|so|dll|zip|png|wav|o)$',
			\ }

" lh-cpp
let g:usemarks = 0

" Plugins

" local vimrc
call lh#local_vimrc#munge('whitelist', '/d/Projekte')
call lh#local_vimrc#munge('whitelist', '/c/Projects')

