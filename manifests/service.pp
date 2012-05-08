class postfix::service {

  service { 'postfix':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    name       => $postfix::params::servicename,
    hasstatus  => $postfix::params::hasstatus,
    pattern    => $postfix::params::processname,
  }

}
