if status is-interactive
    # Commands to run in interactive sessions can go here
    fenv source ~/.profile
end
# pnpm
set -gx PNPM_HOME ~/.local/share/pnpm
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH $PATH  "$PNPM_HOME"
end
# pnpm end