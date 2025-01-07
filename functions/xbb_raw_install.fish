function xbb_raw_install
    set shell $argv[1]
    set package_name $argv[2]

    function pkg_apply
        if test -e "$argv[2]"
            echo "⚙️  Applying $argv[2]"
            eval "$argv[1] $argv[2]"
        end
    end

    if not type -t "$shell" >/dev/null
        echo "🚨 ERROR: shell `$shell` cannot be run"
        return 1
    end

    set shell_path "$shell"

    if test ! -d "$package_name"
        echo "🚨 ERROR: Cannot find $package_name directory"
        return 1
    end

    echo "📦️ Installing $package_name"

    pkg_apply "$shell_path" "$package_name/preconditions-$XBB_PLATFORM"
    pkg_apply "$shell_path" "$package_name/preconditions"
    pkg_apply "$shell_path" "$package_name/install-$XBB_PLATFORM"
    pkg_apply "$shell_path" "$package_name/install"
    pkg_apply "$shell_path" "$package_name/configure-$XBB_PLATFORM"
    pkg_apply "$shell_path" "$package_name/configure"
    pkg_apply "$shell_path" "$package_name/postconditions-$XBB_PLATFORM"
    pkg_apply "$shell_path" "$package_name/postconditions"
end
