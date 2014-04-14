class base::file {

  file { '/etc/profile.d/ruby.sh':
    source => 'puppet:///modules/base/etc/profile.d/ruby.sh',
  }

}
