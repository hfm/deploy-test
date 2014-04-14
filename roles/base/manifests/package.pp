class base::package {

  $packages =[
    'gcc',
    'gcc-c++',
    'git',
    'make',
    'openssl-devel',
    'patch',
    'zlib-devel',
  ]

  package { $packages:
    ensure => installed,
  }

}
