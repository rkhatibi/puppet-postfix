class postfix {

  include postfix::params, postfix::data
  include postfix::install, postfix::config, postfix::service
  Class['postfix::install'] -> Class['postfix::config'] ~> Class['postfix::service']

}
