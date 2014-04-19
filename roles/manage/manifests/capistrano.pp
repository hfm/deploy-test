class manage::capistrano {

  package { 'capistrano':
    ensure   => installed,
    provider => 'gem',
    require  => [
      Exec['ruby-build 2.1.1'],
      Class['manage::file'],
    ],
  }

}
