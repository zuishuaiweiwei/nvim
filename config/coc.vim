nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"autocmd CursorHold * silent call CocActionAsync('highlight')

nmap tt :CocCommand explorer<CR>
nmap <leader>t <Plug>(coc-translator-p)
vmap <leader>t <Plug>(coc-translator-p)
let g:coc_global_extensions=['coc-html','coc-java','coc-go','coc-css','coc-xml','coc-json','coc-explorer','coc-sh','coc-sql','coc-yaml','coc-tsserver','coc-explorer','coc-calc','coc-fzf-preview']


