if exists('g:mythic_loaded') | finish | endif        " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim           " reset them to defaults

command! -nargs=* MythicSetChaosFactor lua require("mythic").set_chaos_factor(<args>)
command! -nargs=* MythicGetChaosFactor lua require("mythic").get_chaos_factor(<args>)
command! -nargs=* MythicIncreaseChaosFacor lua require("mythic").increase_chaos_factor(<args>)
command! -nargs=* MythicDecreaseChaosFacor lua require("mythic").decrease_chaos_factor(<args>)
command! -nargs=* MythicFateCheck lua require("mythic").fate_check_md(<args>)
command! -nargs=* MythicEventCheck lua require("mythic").event_check_md(<args>)
command! -nargs=* MythicGetAction lua require("mythic").get_actions_md(<args>)
command! -nargs=* MythicGetDescriptor lua require("mythic").get_descriptors_md(<args>)
command! -nargs=* MythicDetailsCheck lua require("mythic").details_check_md(<args>)

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:mythic_loaded = 1
