function xbb_sync_package_functions
    rsync -av "$argv[1]" "$argv[2]"
end
