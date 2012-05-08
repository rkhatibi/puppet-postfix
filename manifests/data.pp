class postfix::data {

  $interfaces = hiera_array('mail_interfaces','localhost')
  $networks = hiera_array('mail_networks','127.0.0.0/8')

  $account = hiera('mail_account','myrelay@mydomain.com')
  $passwd = hiera('mail_passwd','mysecretpasswd')
  $relay = hiera('mail_relay','relay.snappytv.com')

  # remember hiera_array is a *merge* of all data 

}
