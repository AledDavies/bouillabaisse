function xbb_if_missing_do
    grep -qxF "$argv[1]" "$argv[2]" || eval $argv[3]
end
