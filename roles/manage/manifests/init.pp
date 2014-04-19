class manage {

  include ::base
  include manage::file
  include manage::capistrano
  include manage::tomahawk
  include manage::ansible

  Class['::base'] -> Class['manage::ansible']
  Class['::base'] -> Class['manage::capistrano']
  Class['::base'] -> Class['manage::tomahawk']

  ::xbuild::lang::install {
    'ruby':
      version => '2.1.1',
      before  => Class['manage::capistrano'];

    'python':
      version => '2.7.6',
      before  => Class['manage::tomahawk'];

    'perl':
      version => '5.18.2',
      before  => Exec['install-cinnamon'];
  }

  file { '/usr/local/python-2.7.6/bin/pip-python':
    target  => '/usr/local/python-2.7.6/bin/pip',
    require => Exec['python-build 2.7.6'],
  }

  exec { 'install-cinnamon':
    command => 'cpanm Cinnamon',
    user    => 'root',
    path    => '/usr/local/perl-5.18.2/bin:/usr/bin:/bin',
    creates => '/usr/local/perl-5.18.2/bin/cinnamon',
    require => Exec['perl-build 5.18.2'],
  }

}
