class postfix::params  {

  $packagename = $::operatingsystem ? {
    default => 'postfix',
  }

  $servicename = $::operatingsystem ? {
    default => 'postfix',
  }

  $processname = $::operatingsystem ? {
    default => 'master',
  }

  $hasstatus = $::operatingsystem ? {
    default => true,
  }

  $configfile = $::operatingsystem ? {
    default => '/etc/postfix/main.cf',
  }

  $configfile_owner = $::operatingsystem ? {
    default => 'root',
  }

  $configfile_group = $::operatingsystem ? {
    default => 'postfix',
  }

  $configfile_mode = $::operatingsystem ? {
    default => '0644',
  }

  $configdir = $::operatingsystem ? {
    default => '/etc/postfix/conf.d',
  }

  $initconfigfile = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => '/etc/sysconfig/postfix',
    /(?i:Ubuntu|Debian)/ => '/etc/default/postfix',
  }

}
