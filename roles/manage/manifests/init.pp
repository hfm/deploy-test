class manage {

  include ::base
  include manage::file
  include ::capistrano
  include ::tomahawk
  include ::ansible

  Class['::base']
  -> Class['::capistrano']

  Class['::base']
  -> Class['::tomahawk']

  ::xbuild::lang::install {
    'ruby':
      version => '2.1.1';

    'python':
      version => '2.7.6',
      before  => File['/usr/local/python-2.7.6/bin/pip-python'];

    'perl':
      version => '5.18.2';
  }

  file { '/usr/local/python-2.7.6/bin/pip-python':
    target  => '/usr/local/python-2.7.6/bin/pip',
  }

}
