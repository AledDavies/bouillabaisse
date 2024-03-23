function xbb_sync_package_config
  rsync -av $argv[1] "$HOME/.config/fish/conf.d/"
end
