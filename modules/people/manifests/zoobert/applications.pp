class people::zoobert::applications {
#  include alfred
#  include atom
#  include caffeine
#  include cyberduck
#  include dropbox
#  include evernote
#  include htop

  # Shell/Terminal installation/setup
  include osx
  include zsh
  include ohmyzsh
  include iterm2::stable
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark

  # Browser installation/setup
  include chrome
  include firefox

# include java
#  include python
#  include rdio
#  include sbt
#  include sizeup
#  include skype
#  include vlc
#  include vagrant

  # Editor installation/setup
  include sublime_text

#  class { 'intellij':
#    edition => 'ultimate',
#    version => '13.1.3'
#  }

  sublime_text_3::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  sublime_text_3::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  } 

  sublime_text_3::package { 'Puppet':
    source => 'russCloak/SublimePuppet'
  } 
}