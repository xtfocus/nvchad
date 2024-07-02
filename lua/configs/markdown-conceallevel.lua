vim.api.nvim_exec2(
  [[
  augroup MarkdownConceal
    autocmd!
    autocmd FileType markdown setlocal conceallevel=1
    autocmd FileType nvim setlocal conceallevel=1
  augroup END
]],
  {}
)

local opts = {
  workspaces = {
    {
      name = "second-brain",
      path = "~/second_brain",
    },

    {
      name = "no-vault",
      path = function()
        -- alternatively use the CWD:
        -- return assert(vim.fn.getcwd())
        return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
      end,
      overrides = {
        notes_subdir = vim.NIL, -- have to use 'vim.NIL' instead of 'nil'
        new_notes_location = "current_dir",
        templates = {
          folder = vim.NIL,
        },
        disable_frontmatter = true,
      },
    },
  },

  ui = {
    enable = true, -- set to false to disable all additional syntax features
    update_debounce = 200, -- update delay after a text change (in milliseconds)
    -- Define how various check-boxes are displayed
    checkboxes = {
      -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
      [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
      ["x"] = { char = "", hl_group = "ObsidianDone" },
      [">"] = { char = "", hl_group = "ObsidianRightArrow" },
      ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
      ["r"] = { char = "󰑇", hl_group = "ObsidianRead" },
      ["c"] = { char = "", hl_group = "ObsidianToRead" },
    },
    reference_text = { hl_group = "ObsidianRefText" },
    highlight_text = { hl_group = "ObsidianHighlightText" },
    tags = { hl_group = "ObsidianTag" },
    hl_groups = {
      -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
      ObsidianTodo = { bold = true, fg = "#f78c6c" },
      ObsidianDone = { bold = true, fg = "#89ddff" },
      ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
      ObsidianTilde = { bold = true, fg = "#ff5370" },
      ObsidianRead = { bold = true, fg = "#00ff00" },
      ObsidianToRead = { bold = true, fg = "#c792ea" },
      ObsidianBullet = { bold = true, fg = "#89ddff" },
      ObsidianRefText = { underline = true, fg = "#c792ea" },
      ObsidianExtLinkIcon = { fg = "#c792ea" },
      ObsidianTag = { italic = true, fg = "#89ddff" },
      ObsidianHighlightText = { bg = "#75662e" },
    },
  },
  -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
  completion = {
    nvim_cmp = true,
    min_chars = 2,
    use_path_only = false,
  },
}

return opts
