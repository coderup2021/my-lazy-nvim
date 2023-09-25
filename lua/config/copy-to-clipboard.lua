local function get_os_type()
  if vim.fn.executable("bash") == 1 then
    local status_path = vim.fn.globpath("/proc/self/status", "")
    local cpuinfo_path = vim.fn.globpath("/proc/cpuinfo", "")
    if #status_path > 0 and #cpuinfo_path > 0 then
      return "linux"
    end
    return "macos"
  else
    return "unknown"
  end
end

-- 复制到系统剪贴板
function copy_to_clipboard()
  local selected_text = vim.fn.getreg("*")
  local os_type = get_os_type()
  local cmd = ""
  if os_type == "linux" then
    cmd = string.format([[echo '%s' | xsel -ib]], selected_text)
  elseif os_type == "macos" then
    cmd = string.format([[echo '%s' | pbcopy]], selected_text)
  end
  vim.fn.system(cmd)
end

-- 将复制命令映射到快捷键
vim.api.nvim_set_keymap("v", "<C-c>", "<Cmd>lua copy_to_clipboard()<CR>", { noremap = true, silent = true })
