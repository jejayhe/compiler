" mapping instruction must not be followed by space
set syntax=cpp" force syntax cpp
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set number
set shiftwidth=4
"set autoindent
filetype indent on "load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set exrc
set showcmd
set tabstop=4 " number of visual spaces per TAB
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L" " display file directory in statusline
execute pathogen#infect()
map <F2> :!ls <CR> 
set cursorline
set hlsearch " highlight matches
set foldenable
nnoremap j gj
nnoremap k gk" normal mode, no recursive remap. visual vertical move.
" move to beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]
" jk is escape
inoremap jk <esc>" insert mode, no recursive mapping
noremap <F7> :tabp <CR>" go to previous tab
noremap <F8> :tabn <CR>" go to next tab
