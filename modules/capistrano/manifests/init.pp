class capistrano {

  package { 'capistrano':
    ensure   => installed,
    provider => 'gem',
  }

}
