# Run by using puppet apply --noop
#  or by fully applying this in a virtual environment.

include ::xbuild

::xbuild::lang::install { 'ruby':
  version => '2.1.0',
}

::xbuild::lang::install { 'python':
  version => '2.7.6',
}
