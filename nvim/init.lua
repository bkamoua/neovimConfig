require("config.lazy")
require("lazy").setup({
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
})

require('pluginconfigs')
require('settings')
require('keymappings')
