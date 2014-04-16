class cinammon {

  package { 'cinammon':
    ensure   => present,
    provider => 'cpan',
  }

}
