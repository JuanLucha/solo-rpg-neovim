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
