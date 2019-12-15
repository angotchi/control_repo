node default {
  file { '/root/README':
    ensure => file,
    content => 'Change the world',
    owner   => 'root',
  }
}
node 'master.anne.local' {
  include role::master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}

