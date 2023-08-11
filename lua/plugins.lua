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
  use 'folke/tokyonight.nvim'
end)
