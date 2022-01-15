function! ReloadAlpha()
lua << EOF
    for k in pairs(package.loaded) do 
        if k:match("^dices") or k:match("^mythic") or k:match("^utils")  then
            package.loaded[k] = nil
        end
    end
EOF
endfunction
" Reload the plugin
nnoremap <Leader>pra :call ReloadAlpha()<CR>
" Test the plugin
nnoremap <Leader>pre :lua require("dices").dice(4, 8, "Generating PJ!")<CR>
nnoremap <Leader>pri :lua require("mythic").fate_check()<CR>
