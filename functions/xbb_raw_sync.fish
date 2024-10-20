function xbb_raw_sync
    rsync -av "$argv[1]" "$argv[2]"
end
