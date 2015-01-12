# Public: Install postgis via homebrew
#
# Examples
#
#   include postgis
class postgis {
  include homebrew

  $version = '2.1.5-boxen1'

  homebrew::formula { 'postgis':
    before => Package['postgis'],
  }

  package { 'postgis':
    ensure => $version,
    require => Package['boxen/brews/postgresql']
  }
}
