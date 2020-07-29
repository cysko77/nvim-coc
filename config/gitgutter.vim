" Define to 250ms in order to update faster the status of each lines.
" Defaults to 4s
"set updatetime=250


let g:gitgutter_sign_added              = '⏽'
let g:gitgutter_sign_modified           = '⏽'
let g:gitgutter_sign_removed            = '⏽'
let g:gitgutter_sign_removed_first_line = '⏽'
let g:gitgutter_sign_modified_removed   = '⏽'

let g:gitgutter_enabled = 1

highlight GitGutterAdd    guifg=#98c379 ctermfg=2
highlight GitGutterChange guifg=#61afef ctermfg=3
highlight GitGutterDelete guifg=#e06c75 ctermfg=1
