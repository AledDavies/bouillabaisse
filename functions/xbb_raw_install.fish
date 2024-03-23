function xbb_raw_install
  set shell $argv[1]
  set package_name $argv[2]

  if not type -t "$shell" > /dev/null
    echo "ERROR: shell `$shell` cannot be run"
    return 1 
  end  

  set shell_path "$shell"

  if test ! -d "$package_name"	
    echo "ERROR: Cannot find $package_name directory"
    return 1
  end

  if test ! -e "$package_name"
    echo "ERROR: Package is not installable"
    return 1
  end

  echo "Installing $package_name"

  if test -e "$package_name/preconditions"
    eval "$shell_path $package_name/preconditions"
  end

  if test -e "$package_name/prerequisites-$S_OSNAME-$S_PLATFORM"
    eval "$shell_path $package_name/prerequisites-$S_OSNAME-$S_PLATFORM"
  end

  if test -e "$package_name/prerequisites"
    eval "$shell_path $package_name/prerequisites"
  end

  eval "$shell_path $package_name/install"

  if test -e "$package_name/postconditions"
    eval "$shell_path $package_name/postconditions"
  end
end
