Package { allow_virtual => true }

node 'manage.deploy.dev' {
  include ::manage
}

node 'one.deploy.dev' {
  include ::target
}

node 'two.deploy.dev' {
  include ::target
}
