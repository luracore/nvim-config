return {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()

    local mr = require("mason-registry")

    local ensure_installed = {
      "clangd",
      "lua-language-server",
      "html-lsp",
      "css-lsp",
      "typescript-language-server",
    }

    for _, name in ipairs(ensure_installed) do
      local ok, pkg = pcall(mr.get_package, name)
      if ok and not pkg:is_installed() then
        pkg:install()
      end
    end
  end,
}
