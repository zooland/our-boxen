class people::zoobert {
  include chrome
  include firefox

  include iterm2::stable
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark
  include iterm2::colors::arthur

  include ohmyzsh

  include sublime_text_3
  include sublime_text_3::package_control

  include java

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

  sublime_text_3::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
}
