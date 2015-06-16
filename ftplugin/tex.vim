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
imap __ _{}<++><Esc>F}i
"exponents
imap ^^ ^{}<++><Esc>F}i
"inline math mode
imap $$ $$<++><Esc>F$i
