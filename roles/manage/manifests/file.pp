class manage::file {

  file {
    '/etc/profile.d/ruby.sh':
      source => 'puppet:///modules/manage/etc/profile.d/ruby.sh';

    '/etc/profile.d/python.sh':
      source => 'puppet:///modules/manage/etc/profile.d/python.sh';

    '/etc/sudoers':
      source => 'puppet:///modules/manage/etc/sudoers',
      owner  => root,
      group  => root,
      mode   => 440;
  }

}
