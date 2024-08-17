return {
  "sindrets/diffview.nvim",
  init = function()
    require("config.diffview")
    local set = vim.opt
    set.fillchars = set.fillchars + "diff:/"
    vim.api.nvim_set_hl(-1, "DiffviewDiffAddAsDelete", { bg = "#431313" })
  end,
}
