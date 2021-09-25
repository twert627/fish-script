# Automatic system updater, written by twert <https://github.com/twert627/fish-script>

function update -d "Automate system update" 
  switch (uname)
    case Linux
      # Debian
      if type -q apt-get
        sudo apt-get update; and sudo apt-get upgrade;
      # Arch
      else if type -q pacman 
        sudo pacman -Syy; and sudo pacman -Syu; 
      # Red Hat
      else if type -q dnf
        sudo dnf update
      end
    case '*'
       echo Unsupported operating system!
  end
end
