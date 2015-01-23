class people::chrisjblackburn {

  include atom

  # install the linter package
  atom::package { 'linter': }

  # install the monokai theme
  atom::theme { 'monokai': }

  class { 'vagrant':
    completion => true,
  }

  git::config::global { 'user.email':
    value  => 'steven.fenigstein@gmail.com'
  } 
  git::config::global { 'user.name':
    value  => 'pfenig'
  } 
}
