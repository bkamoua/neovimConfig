-- which-key
vim.o.timeout = true
vim.o.timeoutlen = 300

--nvim-tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


--clangd
require('lspconfig').clangd.setup {
  -- Add any specific clangd configurations here, e.g.,
  -- capabilities = capabilities, -- If you're defining custom LSP capabilities
  filetypes = { "c", "cpp", "objc", "objcpp" },
}

--nvimtreetoggle alias
local abbreviations = {
  tog = "NvimTreeToggle"
}

for typo, correct in pairs(abbreviations) do
  vim.cmd("abbr " .. typo .. " " .. correct)
end
