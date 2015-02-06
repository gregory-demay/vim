set winaltkeys=no
let g:Tex_GotoError = 0

"http://mactex-wiki.tug.org/wiki/index.php/SyncTeX#Vim_LaTeX.2FSkim
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'dvi, pdf'
 
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Pwww -o $*.ps $*.dvi'
let g:Tex_CompileRule_pspdf = 'ps2pdf $*.ps'
let g:Tex_CompileRule_dvipdf = 'dvipdfm $*.dvi'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
 
let g:Tex_ViewRule_dvi = '/usr/bin/okular'
let g:Tex_ViewRule_ps = '/usr/bin/okular'
let g:Tex_ViewRule_pdf = '/usr/bin/okular'
 
let g:Tex_FormatDependency_ps  = 'dvi,ps'
let g:Tex_FormatDependency_pspdf = 'dvi,ps,pspdf'
let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf'
 
" let g:Tex_IgnoredWarnings ='
"       \"Underfull\n".
"       \"Overfull\n".
"       \"specifier changed to\n".
"       \"You have requested\n".
"       \"Missing number, treated as zero.\n".
"       \"There were undefined references\n".
"       \"Citation %.%# undefined\n".
"       \"\oval, \circle, or \line size unavailable\n"' 
       
let g:Tex_Leader = '`'
let g:Tex_Env_eqnarray="\\begin{eqnarray}\<CR>\%\\label{eq:}\<CR><++>\<CR>\\end{eqnarray}\<CR><++>"
let g:Tex_Env_equation="\\begin{equation}\<CR>\%\\label{eq:}\<CR><++>\<CR>\\end{equation}\<CR><++>"
call IMAP('||','\left|<++>\right|<++>','tex')
call IMAP('{{','\left\{<++>\right\}<++>','tex')
call IMAP('((','\left(<++>\right)<++>','tex')
call IMAP('[[','\left[<++>\right]<++>','tex')
call IMAP(g:Tex_Leader.'$','\mathcal{<++>}<++>','tex')
call IMAP(g:Tex_Leader.'#','\mathbf{<++>}<++>','tex')
call IMAP(g:Tex_Leader.'.','\cdot<++>','tex')
"let s:section="\\section{<++>}\<CR>\%\\label{sec:<++>}\<CR>\<CR><++>"
"call IMAP('SSE',"\\section{<++>}\<CR>\%\\label{sec:<++>}\<CR>\<CR><++>",'tex')

"comment line
nmap <F4> gI%<Esc>j
"decomment line
nmap <F3> gI<Esc>xj
"save all buffers and compile
map <F12> <Esc>:wa<CR>\ll
"save all buffers and commit
map <F8> <Esc>:wa<CR>:Gcommit -a<CR>
