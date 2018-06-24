
nnoremap <C-B><C-J> :call RunJS()<CR>
fun RunJS()
  let fileName = expand('%:p')
  exe "!clear && node "fileName
endfun
