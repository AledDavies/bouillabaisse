function xbb_append_if_missing
    xbb_if_missing_do "$argv[1]" "$argv[2]" 'printf "%s" "$argv[1]" | tee -a "$argv[2]" > /dev/null'
end
