function xbb_prepend_if_missing
    xbb_if_missing_do "$argv[1]" "$argv[2]" 'printf "%s\n%s" "$argv[1]" (cat "$argv[2]") | tee "$argv[2]" > /dev/null'
end
