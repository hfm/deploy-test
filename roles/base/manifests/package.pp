class base::package {

  $packages =[
    'git',
  ]

  package { $packages:
    ensure => installed,
  }

}
