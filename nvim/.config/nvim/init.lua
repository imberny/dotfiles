-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo(
    { { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } },
    true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- My vindent.vim settings
vim.g.vindent_motion_OO_prev = "[l"
vim.g.vindent_motion_OO_next = "]l"
vim.g.vindent_motion_less_prev = "[-"
vim.g.vindent_motion_less_next = "]-"
vim.g.vindent_motion_more_prev = "[="
vim.g.vindent_motion_more_next = "]="
vim.g.vindent_motion_XX_ss = "[p"
vim.g.vindent_motion_XX_se = "]p"
vim.g.vindent_motion_OX_ss = "[P"
vim.g.vindent_motion_OX_se = "]P"
vim.g.vindent_object_OO_ii = "iI"
vim.g.vindent_object_XX_ii = "ii"
vim.g.vindent_object_XX_ai = "ai"
vim.g.vindent_object_XX_aI = "aI"
vim.g.vindent_jumps = 1
vim.g.vindent_count = 0
vim.g.vindent_begin = 1

require "lazy_setup"
require "polish"
-- TODO: figure out how to load config folder instead of individual files
require "config.gdscript"
