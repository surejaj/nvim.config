if not pcall(require, "Comment") then
  return
end

require("Comment").setup {
  -- LHS of operator-pending mapping in NORMAL + VISUAL mode
  opleader = {
    -- line-comment keymap
    line = "gc",
    -- block-comment keymap
    block = "gb",
  },
}
