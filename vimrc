let g:clang_exec='clang++'
let g:clang_user_options='|| exit 0'
set nocompatible | filetype indent plugin on | syn on

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
let g:airline_powerline_fonts=0
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
let g:ycm_extra_conf_globlist = [ '/d/Projekte/Personal/castle2/*' ]

" CTRLP
set wildignore+="*/build/*"
let g:ctrlp_custom_ignore = {
			\ 'dir': '\v[\/](\.git|\.hg|\.svn|build|win32)$',
			\ 'file': '\v\.(exe|so|dll|zip|png|wav|o)$',
			\ }

" lh-cpp
let g:usemarks = 0

" VAM
fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'

  " Force your ~/.vim/after directory to be last in &rtp always:
  " let g:vim_addon_manager.rtp_list_hook = 'vam#ForceUsersAfterDirectoriesToBeLast'

  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif

  " This provides the VAMActivate command, you could be passing plugin names, too
  call vam#ActivateAddons([], {})
endfun
call SetupVAM()


" Plugins
VAMActivate local_vimrc

" local vimrc
call lh#local_vimrc#munge('whitelist', '/d/Projekte')
call lh#local_vimrc#munge('whitelist', '/c/Projects')

