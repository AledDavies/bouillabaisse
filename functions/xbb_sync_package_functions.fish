function xbb_sync_package_functions
  rsync -av $argv[1] "$HOME/.config/fish/functions/"
end
