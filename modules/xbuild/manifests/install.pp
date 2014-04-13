class xbuild::install {

  if !defined(Package['git']) {
    package { 'git':
      ensure => installed,
    }
  }

  exec { 'install xbuild':
    path    => '/usr/bin',
    command => 'git clone https://github.com/tagomoris/xbuild.git /usr/local/xbuild',
    creates => '/usr/local/xbuild',
    require => Package['git'],
  }

}
