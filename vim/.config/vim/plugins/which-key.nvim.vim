Plugin 'folke/which-key.nvim'

function WhichKeySetup()
lua << EOF
require("which-key").setup {}
EOF
endfunction

augroup WhichKeySetup
    autocmd!
    autocmd User PlugLoaded WhichKeySetup()
augroup END
