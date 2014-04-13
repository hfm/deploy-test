# == Class: xbuild
#
# xbuild for puppet
# Default install directory: /usr/local/<LANG>-<VERSION>
#
# === Examples
#
# include ::xbuild
# 
# ::xbuild::lang::install { 'ruby':
#   version => '2.1.0',
# }
#
# ::xbuild::lang::install { 'python':
#   version    => '2.1.0',
#   installdir => '/usr/local/python/2.1.0',
# }
#
# === Authors
#
# Okumura Takahiro <hfm.garden@gmail.com>
#
# === Copyright
#
# Copyright 2014 Okumura Takahiro
#
class xbuild {

  include ::xbuild::install

}
