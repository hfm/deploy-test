class manage::file {

  file {
    '/etc/profile.d/ruby.sh':
      source => 'puppet:///modules/base/etc/profile.d/ruby.sh';

    '/etc/profile.d/python.sh':
      source => 'puppet:///modules/base/etc/profile.d/python.sh';
  }

}
