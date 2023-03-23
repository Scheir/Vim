local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous
      },
    },
    vim.keymap.set('n', '<C-f>', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })
  }
}
