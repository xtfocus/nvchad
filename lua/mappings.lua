require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "CMD DapToggleBreakpoint"})
map("n", "<leader>dpr",
  function()
    require('dap-python').test_method()
  end,
  { desc = "CMD dap-python"}
)


