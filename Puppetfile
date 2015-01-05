# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.7.0"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "2.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.7.1"
github "go",          "2.1.0"
github "homebrew",    "1.9.8"
github "hub",         "1.3.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.4"
github "nodejs",      "4.0.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.7"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

#github "alfred",        "1.4.0" # https://github.com/boxen/puppet-alfred
#github "atom",          "1.2.0" # https://github.com/boxen/puppet-atom
#github "caffeine",      "1.0.0" # https://github.com/boxen/puppet-caffeine/tags
#github "chrome",        "1.2.0" # https://github.com/boxen/puppet-chrome/tags
#github "cyberduck",     "1.0.1" # https://github.com/boxen/puppet-cyberduck
#github "dropbox",       "1.4.1" # https://github.com/boxen/puppet-dropbox/tags
#github "evernote",      "2.0.7" # https://github.com/boxen/puppet-evernote
#github "firefox",       "1.2.3" # https://github.com/boxen/puppet-firefox
#github "heroku",        "2.1.1" # https://github.com/boxen/puppet-heroku/tags
#github "htop",          "1.0.0", :repo => "skottler/puppet-htop"
#github "intellij",      "1.5.1" # https://github.com/boxen/puppet-intellij
#github "iterm2",        "1.2.2" # https://github.com/boxen/puppet-iterm2/tags
#github "java",          "1.8.0" # https://github.com/boxen/puppet-java/tags
#github "maven",         "1.0.0", :repo => "mrolafsson/puppet-maven"
github "ohmyzsh",       "1.0.0", :repo => "erivello/puppet-ohmyzsh"
#github "onepassword",   "1.1.0" # https://github.com/boxen/puppet-onepassword/tags
#github "osx",           "2.4.0" # https://github.com/boxen/puppet-osx/tags
#github "python",        "1.3.0" # https://github.com/boxen/puppet-python/tags
#github "spotify",       "1.0.1" # https://github.com/boxen/puppet-spotify
#github "sbt",           "0.0.1", :repo => "steinim/puppet-sbt"
#github "skype",         "1.0.8" # https://github.com/boxen/puppet-skype
##github "sizeup",        "1.0.0" # https://github.com/boxen/puppet-sizeup/tags
github "sublime_text",  "1.0.1" # https://github.com/boxen/puppet-sublime_text
#github "tunnelblick",   "1.0.6" # https://github.com/boxen/puppet-tunnelblick/tags
#github "vagrant",       "3.0.9" # https://github.com/boxen/puppet-vagrant/tags
#github "vcsrepo",       "0.2.0", :repo => "puppetlabs/puppetlabs-vcsrepo" # https://github.com/puppetlabs/puppetlabs-vcsrepo/tags
#github "virtualbox",    "1.0.11" # https://github.com/boxen/puppet-virtualbox/tags
#github "vlc",           "1.1.0" # https://github.com/boxen/puppet-vlc/tags
#github "vmware_fusion", "1.1.0" # https://github.com/boxen/puppet-vmware_fusion/tags
github "zsh",           "1.0.0" # https://github.com/boxen/puppet-zsh/tags




