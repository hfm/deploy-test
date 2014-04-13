class base::package {

  $packages =[
    'git',
    'openssl-devel'
  ]

  package { $packages:
    ensure => installed,
  }

}
