" Custom Folding for python
function! BlockFolds()
 let thisline = getline(v:lnum)
 if match(thisline, '# %%') >= 0
    return ">1"
 else
    return "="
 endif
endfunction

autocmd BufEnter *.py set foldmethod=expr
" autocmd BufEnter *.py set foldmethod=marker
" autocmd BufEnter *.py set foldmarker=#\ %%,#\ %%
autocmd BufEnter *.py set foldexpr=BlockFolds()


" LaTeX is Slow
autocmd FileType tex :NoMatchParen
au FileType tex setlocal nocursorline

" Folding for LaTeX
autocmd BufEnter *.tex set foldmethod=expr
autocmd BufEnter *.tex set foldexpr=vimtex#fold#level(v:lnum)
autocmd BufEnter *.tex set foldtext=vimtex#fold#text()

