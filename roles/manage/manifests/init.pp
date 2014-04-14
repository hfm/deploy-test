class manage {

  include ::base
  include manage::file
  include ::capistrano

  Class['::base']
  -> Class['::capistrano']

  ::xbuild::lang::install {
    'ruby':
      version => '2.1.1';

    'python':
      version => '2.7.6';

    'perl':
      version => '5.18.2';
  }

}
