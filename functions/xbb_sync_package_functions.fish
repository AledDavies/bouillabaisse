function xbb_sync_package_functions
  rsync -av "$argv[1]/resources/fish/functions/" "$HOME/.config/fish/functions/"
end
