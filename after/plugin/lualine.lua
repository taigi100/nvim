require('lualine').setup {
  options = { theme  = 'auto' },
  sections = {lualine_c = {require('auto-session-library').current_session_name}}
}
