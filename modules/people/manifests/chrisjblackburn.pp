class people::chrisjblackburn {

  include atom
  include prezto
  include googledrive
  include java
  include alfred
  include evernote
  include vmware_fusion
  include virtualbox
  
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
