class people::zoobert {
  include chrome
  include firefox
  # include emacs   # requires emacs module in Puppetfile
  # include sparrow # requires sparrow module in Puppetfile

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"
  
  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'zoobert/dotfiles',
    require => File[$my]
  }
}
