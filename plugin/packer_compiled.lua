-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/mitch/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/Users/mitch/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/Users/mitch/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/Users/mitch/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/mitch/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/mitch/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/mitch/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n\v\0\3\3\0\0\0\1K\0\1\0¡\5\1\0\4\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0024\3\0\0=\3\n\0023\3\v\0=\3\f\2B\0\2\0016\0\r\0009\0\14\0'\2\15\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\21before_highlight\0\21highlight_groups\vgroups\1\0\25\14git_merge\tiris\15git_delete\tlove\rgit_text\trose\tlink\tiris\14git_stage\tiris\ah1\tiris\15git_rename\tpine\tinfo\tfoam\18git_untracked\vsubtle\thint\tiris\15git_change\trose\14git_dirty\trose\ah5\tpine\fgit_add\tfoam\vborder\nmuted\nerror\tlove\ah6\tfoam\tnote\tpine\ah4\tgold\ah3\trose\ah2\tfoam\ttodo\trose\npanel\fsurface\15git_ignore\nmuted\twarn\tgold\vstyles\1\0\3\vitalic\2\tbold\2\17transparency\1\venable\1\0\3\15migrations\2\rterminal\2\22legacy_highlights\2\1\0\4\fvariant\tauto\25dim_inactive_windows\1\17dark_variant\tmain%extend_background_behind_borders\2\nsetup\14rose-pine\frequire\0" },
    loaded = true,
    path = "/Users/mitch/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/mitch/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n\v\0\3\3\0\0\0\1K\0\1\0¡\5\1\0\4\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0024\3\0\0=\3\n\0023\3\v\0=\3\f\2B\0\2\0016\0\r\0009\0\14\0'\2\15\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\21before_highlight\0\21highlight_groups\vgroups\1\0\25\14git_merge\tiris\15git_delete\tlove\rgit_text\trose\tlink\tiris\14git_stage\tiris\ah1\tiris\15git_rename\tpine\tinfo\tfoam\18git_untracked\vsubtle\thint\tiris\15git_change\trose\14git_dirty\trose\ah5\tpine\fgit_add\tfoam\vborder\nmuted\nerror\tlove\ah6\tfoam\tnote\tpine\ah4\tgold\ah3\trose\ah2\tfoam\ttodo\trose\npanel\fsurface\15git_ignore\nmuted\twarn\tgold\vstyles\1\0\3\vitalic\2\tbold\2\17transparency\1\venable\1\0\3\15migrations\2\rterminal\2\22legacy_highlights\2\1\0\4\fvariant\tauto\25dim_inactive_windows\1\17dark_variant\tmain%extend_background_behind_borders\2\nsetup\14rose-pine\frequire\0", "config", "rose-pine")
time([[Config for rose-pine]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
