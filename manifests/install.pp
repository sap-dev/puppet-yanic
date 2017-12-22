class yanic::install inherits yanic {

  group { 'yanic':
    ensure => present,
    system => true
  } ->
  user { 'yanic':
    ensure => present,
    system => true,
    shell  => '/bin/false',
    home   => '/opt/yanic',
    gid    => 'yanic'
  } ->
  file { '/usr/bin/yanic':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/yanic/yanic.binary'
  } ->
  file { '/lib/systemd/system/yanic.service':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => 'puppet:///modules/yanic/yanic.service'
  }

}

