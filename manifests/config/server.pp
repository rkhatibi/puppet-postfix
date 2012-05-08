class postfix::config::server inherits postfix::config {

  include sasl

  File['main.cf'] { content => template('postfix/main.cf.server.erb'), }

}
