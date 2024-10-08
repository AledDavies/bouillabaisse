function xbb_gnu_or_system
    if test (count $argv) -eq 0
        echo "Error: arguments required"
        return 1
    end

    set cmd "g$argv[1]"

    if test -x "$HOMEBREW_PREFIX/bin/$cmd"
        eval "env $cmd $argv[2..-1]"
    else
        eval "env $argv[1] $argv[2..-1]"
    end
end
