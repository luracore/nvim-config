local jdtls = require("jdtls")

local config = {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls" },
  root_dir = vim.fn.getcwd(),
}

jdtls.start_or_attach(config)
