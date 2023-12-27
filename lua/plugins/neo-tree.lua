return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  window = {
    mappings = {
      ["N"] = { "add" },
    },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
    }
  }
}
