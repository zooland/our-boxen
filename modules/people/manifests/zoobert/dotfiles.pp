class people::zoobert::dotfiles {
  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/src"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'zoobert/dotfiles',
    require => File[$my]
  }

  exec { "install dotfiles":
    command => "$my/script/install.sh"
  }
}
