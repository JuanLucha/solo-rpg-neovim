if exists('g:dices_loaded') | finish | endif        " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim           " reset them to defaults

command! -nargs=* DiceMd lua require("dices").dice_md(<args>)
command! -nargs=* Dice lua require("dices").dice(<args>)

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:dices_loaded = 1
