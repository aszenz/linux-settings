fish_vi_key_bindings
# Emulates vim's cursor shape behavior
# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert underscore
# Set the replace mode cursor to an underscore
set fish_cursor_replace_one line
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block
set fish_color_command green
set -Ux EDITOR vim
set -Ux PAGER less
alias cat=bat
