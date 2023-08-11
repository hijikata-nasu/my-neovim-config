vim.cmd [[packadd packer.nvim]]
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
