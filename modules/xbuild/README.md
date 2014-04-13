## module structure

```
manifests/
├── init.pp
├── install.pp
└── lang
    └── install.pp
```

## how to use

```puppet
include ::xbuild

::xbuild::lang::install { 'ruby':
  version => '2.1.0',
}

::xbuild::lang::install { 'python':
  version    => '2.7.6',
  installdir => '/usr/local/python/2.7.6',
}
```
