set nocompatible
set hidden
set wildmenu
set showcmd
set incsearch
set hlsearch
set ignorecase
set smartcase
set ruler
"set smartindent
set mouse=a
set t_vb=
set nobackup
set cursorline
set noautochdir " automatically change the directory to the current working file
set t_Co=256
syntax enable
set noerrorbells novisualbell t_vb=
"indentation
"gui
set guioptions-=r
set guioptions-=T
set guioptions-=l
set go-=R
set go-=L
set tags=./tags
setlocal spell spelllang=en_us
set spell
set complete-=i "make completion ignore modules in the file system

"Vundle stuff"{{{
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'hickop'
Bundle 'oceandeep'
Bundle 'ciaranm/inkpot'
Bundle 'darktango.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'mirell/vim-matchit'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
" perl-support bundle somehow messes up with indentation somehow
Bundle 'vim-scripts/perl-support.vim'
Bundle 'klen/python-mode'
Bundle 'rson/vim-conque'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
"Bundle 'MarcWeber/vim-addon-ocaml'
"Bundle 'jrk/vim-ocaml'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-ruby/vim-ruby'
Bundle 'therubymug/vim-pyte'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'https://github.com/jpo/vim-railscasts-theme.git'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'jpalardy/vim-slime'
"Bundle 'xolog/vim-easytags'
Bundle 'vim-scripts/taglist.vim'
Bundle 'lukerandall/haskellmode-vim'
Bundle 'mileszs/ack.vim'
"Bundle 'torandu/vim-bufexplorer'
"Bundle 'fholgado/minibufexpl.vim'
"Bundle 'vim-scripts/snippetsEmu'
"Bundle 'vim-scripts/snippetsEmu-bundles'
Bundle 'pangloss/vim-javascript'
Bundle 'LStinson/perlhelp-vim'
Bundle 'skammer/vim-css-color'
"}}}
filetype plugin indent on

"fuzzy find settings"{{{
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 400
let g:fuf_mrufile_exclude = '\v\~$|\.(bak|sw[po])$|^(\/\/|\\\\|\/mnt\/)'"}}}
"Fuzzy find keys"{{{
nnoremap <silent> <C-n>      :FufBuffer<CR>
nnoremap <silent> <C-p>      :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <C-f><C-p> :FufFileWithFullCwd<CR>
nnoremap <silent> <C-f>p     :FufFile<CR>
nnoremap <silent> <C-f><C-d> :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <C-f>d     :FufDirWithFullCwd<CR>
nnoremap <silent> <C-f>D     :FufDir<CR>
nnoremap <silent> <C-j>      :FufMruFile<CR>
nnoremap <silent> <C-k>      :FufMruCmd<CR>
nnoremap <silent> <C-b>      :FufBookmarkDir<CR>
nnoremap <silent> <C-f><C-t> :FufTag<CR>
nnoremap <silent> <C-f>t     :FufTag!<CR>
noremap  <silent> g]         :FufTagWithCursorWord!<CR>
nnoremap <silent> <C-f><C-f> :FufTaggedFile<CR>
nnoremap <silent> <C-f><C-j> :FufJumpList<CR>
nnoremap <silent> <C-f><C-g> :FufChangeList<CR>
nnoremap <silent> <C-f><C-q> :FufQuickfix<CR>
nnoremap <silent> <C-f><C-l> :FufLine<CR>
nnoremap <silent> <C-f><C-h> :FufHelp<CR>
nnoremap <silent> <C-f><C-b> :FufAddBookmark<CR>
vnoremap <silent> <C-f><C-b> :FufAddBookmarkAsSelectedText<CR>
nnoremap <silent> <C-f><C-e> :FufEditInfo<CR>
nnoremap <silent> <C-f><C-r> :FufRenewCache<CR>
"}}}
"{{{ function keys
nnoremap <silent> <F2> :silent noh<CR>
nnoremap <silent> <C-F5> :Errors<CR>
nnoremap <silent> <F3> :BD<CR>
nnoremap <silent> <C-F4> :NERDTree<CR>
inoremap <F5> <C-O>za
nnoremap <F5> za
onoremap <F5> <C-C>za
vnoremap <F5> zf
nnoremap <silent> <F6> :TagbarToggle<CR>
map <silent> <F7> :call ToggleFold()<CR>
let g:EasyMotion_leader_key = '<F12>'
nnoremap ,cd :cd %:p:h<CR>
nnoremap ,el yy:! <C-R><C-0><BS><CR>
"}}}
"{{{ folding toggle function
let g:FoldMethod = 1
fun! ToggleFold()
    if g:FoldMethod == 0
        exe 'set foldmethod=indent'
        let g:FoldMethod = 1
        echo 'indent'
    else
        exe 'set foldmethod=marker'
        let g:FoldMethod = 0
        echo 'marker'
    endif
endfun
"}}}

"color theme settings"{{{
set background=dark
if has('gui_running')
  colorscheme hickop
else
  colorscheme solarized
endif
"}}}

set guifont=DejaVu\ Sans\ Mono\ 10
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=1
let g:slime_target = "tmux"
let g:ackprg="ack -H --nocolor --nogroup --column"

let g:pymode_lint_write = 0
let g:pymode_run_key = 'R'

"minibufexplr settings"{{{
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
"}}}
"javascript/html indentation"{{{
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
"}}}
"abbreviations"{{{
iabbrev pust puts
iabbrev coutn count
iabbrev foudn found
iabbrev tahn than
iabbrev shoulld should
iabbrev bottmo bottom
iabbrev teh the
iabbrev packge package
iabbrev seperate separate
iabbrev storign storing
iabbrev useufl useful
iabbrev defautl default
iabbrev lazy_buidl lazy_build
iabbrev metclass metaclass
iabbrev aroudn around
iabbrev p_el print_endline
iabbrev dependacies dependencies
iabbrev dependancies dependencies
"}}}
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
set wrapmargin=0
set textwidth=0
set foldmethod=indent
"{{{ VAM
fun! EnsureVamIsOnDisk(vam_install_path)
  " windows users may want to use http://mawercer.de/~marc/vam/index.php
  " to fetch VAM, VAM-known-repositories and the listed plugins
  " without having to install curl, 7-zip and git tools first
  " -> BUG [4] (git-less installation)
  let is_installed_c = "isdirectory(a:vam_install_path.'/vim-addon-manager/autoload')"
  if eval(is_installed_c)
    return 1
  else
    if 1 == confirm("Clone VAM into ".a:vam_install_path."?","&Y\n&N")
      " I'm sorry having to add this reminder. Eventually it'll pay off.
      call confirm("Remind yourself that most plugins ship with ".
            \"documentation (README*, doc/*.txt). It is your ".
            \"first source of knowledge. If you can't find ".
            \"the info you're looking for in reasonable ".
            \"time ask maintainers to improve documentation")
      call mkdir(a:vam_install_path, 'p')
      execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '.shellescape(a:vam_install_path, 1).'/vim-addon-manager'
      " VAM runs helptags automatically when you install or update 
      " plugins
      exec 'helptags '.fnameescape(a:vam_install_path.'/vim-addon-manager/doc')
    endif
    return eval(is_installed_c)
  endif
endf

fun! SetupVAM()
  " Set advanced options like this:
  " let g:vim_addon_manager = {}
  " let g:vim_addon_manager['key'] = value

  " Example: drop git sources unless git is in PATH. Same plugins can
  " be installed from www.vim.org. Lookup MergeSources to get more control
  " let g:vim_addon_manager['drop_git_sources'] = !executable('git')

  " VAM install location:
  let vam_install_path = expand('$HOME') . '/.vim/vim-addons'
  if !EnsureVamIsOnDisk(vam_install_path)
    echohl ErrorMsg
    echomsg "No VAM found!"
    echohl NONE
    return
  endif
  exec 'set runtimepath+='.vam_install_path.'/vim-addon-manager'

  " Tell VAM which plugins to fetch & load:
  call vam#ActivateAddons([], {'auto_install' : 0})
  " sample: call vam#ActivateAddons(['pluginA','pluginB', ...], {'auto_install' : 0})

  " Addons are put into vam_install_path/plugin-name directory
  " unless those directories exist. Then they are activated.
  " Activating means adding addon dirs to rtp and do some additional
  " magic

  " How to find addon names?
  " - look up source from pool
  " - (<c-x><c-p> complete plugin names):
  " You can use name rewritings to point to sources:
  "    ..ActivateAddons(["github:foo", .. => github://foo/vim-addon-foo
  "    ..ActivateAddons(["github:user/repo", .. => github://user/repo
  " Also see section "2.2. names of addons and addon sources" in VAM's documentation
endfun
call SetupVAM()
" experimental [E1]: load plugins lazily depending on filetype, See
" NOTES
" experimental [E2]: run after gui has been started (gvim) [3]
" option1:  au VimEnter * call SetupVAM()
" option2:  au GUIEnter * call SetupVAM()
" See BUGS sections below [*]
" Vim 7.0 users see BUGS section [3]
" Uncomment the next line to use vim-addon-manager
call vam#ActivateAddons(["vim-addon-ocaml"], {'auto_install' : 1})
"}}}

autocmd FileType ocaml setlocal commentstring=(*%s*)
autocmd FileType ocaml setlocal shiftwidth=2
autocmd FileType python set nonu
set ofu=syntaxcomplete#Complete

