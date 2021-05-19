local config

local function opt(key, default)
  key = "ayu_" .. key
  if vim.g[key] == nil then
    return default
  end
  return vim.g[key]
end

config = {
  mirage = opt('mirage', false),
  commentStyle = opt('italic_comments', true) and 'italic' or 'NONE',
  transparent = opt('transparent', false)
}

return config
