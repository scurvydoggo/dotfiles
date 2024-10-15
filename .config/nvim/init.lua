-------------------
-- Init
-------------------
require("config.lazy")
require("lazy").setup("plugins")

-------------------
-- Theme
-------------------
vim.g.material_style = 'deep ocean'
vim.cmd 'colorscheme material'

-------------------
-- Editor
-------------------
vim.o.clipboard = 'unnamedplus'

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

---------------------------------------
-- Plugins
---------------------------------------
require('lualine').setup()

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
