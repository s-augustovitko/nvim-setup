local api = require("nvim-tree.api")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Function to open a file
local function edit_or_open()
  local node = api.tree.get_node_under_cursor()

  if node.nodes ~= nil then
    api.node.open.edit()
  else
    api.node.open.edit()
  end
end

-- Focus file on creation
require("nvim-tree").setup({
  on_attach = function(bufnr)
    local function opts(desc)
      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end
    local ok, api = pcall(require, "nvim-tree.api")
    assert(ok, "api module is not found")

    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set("n", "l", edit_or_open, opts("Edit Or Open"))
  end,
  filters = {
    git_ignored = false,
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
  }
})

vim.keymap.set('n', '<Space>e', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<Space>tr', ':NvimTreeRefresh<CR>')
