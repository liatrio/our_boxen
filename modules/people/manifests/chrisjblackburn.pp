class people::chrisjblackburn {

  include atom
  include prezto

  # install the linter package
  atom::package { 'linter': }

  # install the monokai theme
  atom::theme { 'monokai': }

  class { 'vagrant':
    completion => true,
  }

  git::config::global { 'user.email':
    value  => 'chris@liatrio.com'
  } 
  git::config::global { 'user.name':
    value  => 'chrisjblackburn'
  } 
}
