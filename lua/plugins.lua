-- pckr のインストール検知
local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
  -- [pckrのクイックスタート](https://github.com/lewis6991/pckr.nvim?tab=readme-ov-file#quickstart)
  -- 追加後は `` を実行でプラグインをインストール
  'folke/tokyonight.nvim';   -- カラーテーマのプラグイン

  'lewis6991/gitsigns.nvim'; -- Gitで管理されてるファイルの変更履歴を表示するプラグイン
  'norcalli/nvim-colorizer.lua'; -- カラーコードの色を表示してくれるプラグイン

  'github/copilot.vim'; -- GitHub copilot
}
