class manage::ansible {

  package { 'ansible':
    ensure   => installed,
    provider => 'pip',
    require  => [
      Exec['python-build 2.7.6'],
      File['/usr/local/python-2.7.6/bin/pip-python'],
      Class['manage::file'],
    ],
  }

}
