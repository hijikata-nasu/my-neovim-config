require("options")
require("plugins")

-- カラーテーマの初期化
vim.cmd[[colorscheme tokyonight-night]] 

-- インサートモードを抜けた時に英語にする設定
require('im_select').setup {
    default_im_select = "com.apple.keylayout.ABC"
}
