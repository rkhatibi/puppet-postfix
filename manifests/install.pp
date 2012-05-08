class postfix::install {

  package { 'postfix':
      ensure => present,
      name   => $postfix::params::packagename,
  }

}
