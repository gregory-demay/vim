"	--------------------------------------------------
"	--------------------------------------------------
"	TEX SETTINGS
"	--------------------------------------------------
"	--------------------------------------------------

let &showbreak="\u21aa"
set expandtab
set tabstop=2
set shiftwidth=1
set softtabstop=2
"set tabstop=2
"set expandtab
"set wrap linebreak
"set nolist
"show line break
"set smartindent

set textwidth=60
"set formatoptions=tcq
"set wrapmargin=0




"comment line
nmap <F4> gI%<Esc>j
"decomment line
nmap <F3> gI<Esc>xj
"save all buffers
map <F12> <Esc>:wa<CR>
"save all buffers and commit
map <F8> <Esc>:wa<CR>:Gcommit -a<CR>

" Pressing Control-j jumps to the next placeholder.
inoremap <c-j> <Esc>/<++><CR><Esc>cf>
"indices
imap __ _{ }<++><Esc>F}i
"curly brackets
imap {} {}<++><Esc>F}i
"exponents
imap ^^ ^{ }<++><Esc>F}i
"inline math mode
imap $$ $$<++><Esc>F$i
