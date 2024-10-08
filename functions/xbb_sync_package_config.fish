function xbb_sync_package_config
    rsync -av "$argv[1]/resources/fish/conf.d/" "$HOME/.config/fish/conf.d/"
end
