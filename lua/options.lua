require "nvchad.options"

-- add yours here!
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
-- vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
-- vim.api.nvim_set_hl(0, "NavicIconsFile",          {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsModule",        {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsNamespace",     {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsPackage",       {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsClass",         {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsMethod",        {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsProperty",      {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsField",         {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsConstructor",   {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsEnum",          {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsInterface",     {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsFunction",      {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsVariable",      {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsConstant",      {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsString",        {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsNumber",        {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsBoolean",       {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsArray",         {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsObject",        {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsKey",           {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsNull",          {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsEnumMember",    {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsStruct",        {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsEvent",         {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsOperator",      {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicText",               {default = true, bg = "#282c34", fg = "#abb2bf"})
-- vim.api.nvim_set_hl(0, "NavicSeparator",          {default = true, bg = "#282c34", fg = "#abb2bf"})
--
vim.opt.updatetime = 200

vim.api.nvim_create_autocmd({
  "WinScrolled", -- or WinResized on NVIM-v0.9 and higher
  "BufWinEnter",
  "CursorHold",
  "InsertLeave",

  -- include this if you have set `show_modified` to `true`
  "BufModifiedSet",
}, {
  group = vim.api.nvim_create_augroup("barbecue.updater", {}),
  callback = function()
    require("barbecue.ui").update()
  end,
})

-- --
-- require("barbecue").setup {
--   create_autocmd = false, -- prevent barbecue from updating itself automatically
-- }
-- --
-- vim.api.nvim_create_autocmd({
--   "WinScrolled", -- or WinResized on NVIM-v0.9 and higher
--   "BufWinEnter",
--   "CursorHold",
--   "InsertLeave",
--
--   -- include this if you have set `show_modified` to `true`
--   "BufModifiedSet",
-- }, {
--   group = vim.api.nvim_create_augroup("barbecue.updater", {}),
--   callback = function()
--     require("barbecue.ui").update()
--   end,
-- })
--

return {
  Type = { italic = true },
  SpecialComment = { italic = true },
  TSAttribute = { italic = true },
  TSParameter = { italic = true },
  TSLabel = { italic = true },
  TSVariableBuiltin = { italic = true },
  TSTagAttribute = { italic = true },
}
