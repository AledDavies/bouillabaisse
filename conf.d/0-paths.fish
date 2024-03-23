# This configuration file is executed first. We add the OS
# specific paths here so that the other configuration files
# are OS independant.

if status is-login
  # Add any standard paths. We use -g to ensure
  # That the paths don't end up getting persisted
  # in fish_variables

  fish_add_path -g ~/.local/bin
  fish_add_path -g /usr/local/sbin
end
