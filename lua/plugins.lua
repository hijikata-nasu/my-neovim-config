-- packer.nvimがインストールされてるかを検知してインストールされてなかったらしてくれる関数
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- (packer のクイックスタートガイド)[https://github.com/wbthomason/packer.nvim#quickstart]
  -- この下にインストールするプラグインを記載します。
  -- use 'プラグインA'
  -- use 'プラグインB'
  -- プラグイン追加後は`:PackerInstall`でプラグインをインストールする
  --
  use 'folke/tokyonight.nvim'   -- カラーテーマのプラグイン

  use 'keaising/im-select.nvim' -- インサートモードを抜けた時にIMEを自動で切り替えてくれるプラグイン
  use 'lewis6991/gitsigns.nvim' -- Gitで管理されてるファイルの変更履歴を表示するプラグイン
  use 'norcalli/nvim-colorizer.lua' -- カラーコードの色を表示してくれるプラグイン

  use 'github/copilot.vim'


  use { 'neoclide/coc.nvim', branch = "release" }   -- nvimをいい感じにしてくれるプラグインを導入
end)
