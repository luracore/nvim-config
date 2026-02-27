return {
  "echasnovski/mini.files",
  version = false,
  keys = {
    {
      "<leader>e",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (Directory of Current File)",
    },
  },
  config = function()
    require("mini.files").setup({
      content = {
        filter = nil,
        highlight = nil,
        prefix = nil,
        sort = nil,
      },

      mappings = {
        close       = 'q',
        go_in = 'l',
        go_in_plus  = 'L',
        go_out = 'h',
        go_out_plus = 'H',
        mark_goto   = "'",
        mark_set    = 'm',
        reset       = '<BS>',
        reveal_cwd  = '@',
        show_help   = 'g?',
        synchronize = '=',
        trim_left   = '<',
        trim_right  = '>',
      },

      options = {
        permanent_delete = true,
        use_as_default_explorer = false,
      },

      windows = {
        max_number = math.huge,
        preview = true,
        width_focus = 50,
        width_nofocus = 15,
        width_preview = 25,
      },
    })
  end,
}
