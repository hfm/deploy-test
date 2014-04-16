class tomahawk {

  package { 'tomahawk':
    ensure   => installed,
    provider => 'pip',
  }

}
