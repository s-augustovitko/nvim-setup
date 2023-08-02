vim.g.mapleader = " "             -- set leader key
vim.g.diagnostics_mode = 3        -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
vim.g.highlighturl_enabled = true -- highlight URLs by default

vim.opt.breakindent = true        -- Wrap indent to match  line start
vim.opt.copyindent = true         -- Copy the previous indentation on autoindenting
vim.opt.cursorline = true         -- Highlight the text line of the cursor
vim.opt.expandtab = true          -- Enable the use of space in tab
vim.opt.fileencoding = "utf-8"    -- File content encoding for the buffer
vim.opt.fillchars = { eob = " " } -- Disable `~` on nonexistent lines
vim.opt.history = 100             -- Number of commands to remember in a history table
vim.opt.ignorecase = true         -- Case insensitive searching
vim.opt.infercase = true          -- Infer cases in keyword completion
vim.opt.linebreak = true          -- Wrap lines at 'breakat'
vim.opt.mouse = "a"               -- Enable mouse support
vim.opt.number = true             -- Show numberline
vim.opt.preserveindent = true     -- Preserve indent structure as much as possible
vim.opt.relativenumber = true     -- Show relative numberline
vim.opt.scrolloff = 8             -- Number of lines to keep above and below the cursor
vim.opt.shiftwidth = 2            -- Number of space inserted for indentation
vim.opt.showtabline = 2           -- always display tabline
vim.opt.sidescrolloff = 8         -- Number of columns to keep at the sides of the cursor
vim.opt.signcolumn = "yes"        -- Always show the sign column
vim.opt.smartcase = true          -- Case sensitivie searching
vim.opt.smartindent = true        -- Smarter autoindentation
vim.opt.splitbelow = true         -- Splitting a new window below the current one
vim.opt.splitright = true         -- Splitting a new window at the right of the current one
vim.opt.tabstop = 2               -- Number of space in a tab
vim.opt.termguicolors = true      -- Enable 24-bit RGB color in the TUI
vim.opt.timeoutlen = 500          -- Shorten key timeout length a little bit for which-key
vim.opt.undofile = true           -- Enable persistent undo
vim.opt.virtualedit = "block"     -- allow going past end of line in visual block mode
vim.opt.wrap = true               -- Enable wrapping of lines longer than the width of window
vim.opt.backup = false            -- Disable making backup
vim.opt.writebackup = false       -- Disable making a backup before overwriting a file
vim.opt.updatetime = 300          -- for coc updatetime
