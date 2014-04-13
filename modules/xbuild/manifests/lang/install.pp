define xbuild::lang::install (
  $language   = $title,
  $version,
  $installdir = '/usr/local'
) {

  require ::xbuild::install

  exec { "${language}-build ${version}":
    path    => ['/bin', '/usr/bin', '/usr/local/xbuild'],
    command => "${language}-install ${version} ${installdir}/${language}-${version}",
    creates => "${installdir}/${language}-${version}",
    timeout => 0,
  }

}
