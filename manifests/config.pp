class postfix::config {

  File {
    owner => $postfix::params::configfile_owner,
    group => $postfix::params::configfile_group,
    mode  => $postfix::params::configfile_mode,
  }

  file { '/etc/postfix':
    ensure => directory,
  }

  file { 'main.cf':
    ensure  => present,
    path    => $postfix::params::configfile,
    content => template('postfix/main.cf.erb'),
  }

  file { 'postfix.passwd':
    ensure  => present,
    path    => '/etc/postfix/postfix.passwd',
    mode    => '0640',
    content => template('postfix/postfix.passwd.erb'),
  }

  exec { 'postmap_postfix.passwd':
    command     => 'postmap /etc/postfix/postfix.passwd',
    logoutput   => on_failure,
    notify      => Class['postfix::service'],
    refreshonly => true,
    subscribe   => File['postfix.passwd'],
  }

}
