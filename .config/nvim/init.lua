-------------------
-- Init
-------------------
require("config.lazy")

-- Update plugins in the background
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("lazy").update({ show = false })
  end
})

-------------------
-- Theme
-------------------
require('lualine').setup()
vim.g.material_style = 'lighter'
vim.cmd 'colorscheme material'

-------------------
-- Editor
-------------------
vim.o.clipboard = 'unnamedplus'

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

---------------------------------------
-- Modes
---------------------------------------
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true }) -- Exit terminal mode with Esc

---------------------------------------
-- Language servers
---------------------------------------
require("mason").setup()
require("mason-lspconfig").setup()
vim.lsp.enable('bashls')
vim.lsp.enable('kotlin_lsp')
vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('vtsls')

-------------------
-- Telescope
-------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-------------------
-- Oil
-------------------
require("oil").setup({
  view_options = {
    show_hidden = true,
  },
})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
