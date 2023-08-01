local api = require("nvim-tree.api")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Function to copy file to location
local function copy_file_to(node)
  local file_src = node['absolute_path']
  -- The args of input are {prompt}, {default}, {completion}
  -- Read in the new file path using the existing file's path as the baseline.
  local file_out = vim.fn.input("COPY TO: ", file_src, "file")
  -- Create any parent dirs as required
  local dir = vim.fn.fnamemodify(file_out, ":h")
  vim.fn.system { 'mkdir', '-p', dir }
  -- Copy the file
  vim.fn.system { 'cp', '-R', file_src, file_out }
end

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

    vim.keymap.set("n", "<CR>", api.node.open.tab_drop, opts("Tab drop"))
    vim.keymap.set('n', 'c', copy_file_to, opts('Copy File To'))
    vim.keymap.set("n", "l", edit_or_open, opts("Edit Or Open"))
  end
})

vim.keymap.set('n', '<Space>e', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<Space>tr', ':NvimTreeRefresh<CR>')
