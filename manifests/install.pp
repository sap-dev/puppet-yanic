class yanic::install inherits yanic {

  $dir_nodes_state_path = dirname($nodes_state_path)
  $dir_nodes_output_meshviewer_ffrgb_path = dirname($nodes_output_meshviewer_ffrgb_path)
  $dir_nodes_output_meshviewer_nodes_path = dirname($nodes_output_meshviewer_nodes_path)
  $dir_nodes_output_meshviewer_graph_path = dirname($nodes_output_meshviewer_graph_path)
  $dir_nodes_output_nodelist_path = dirname($nodes_output_nodelist_path)
  $dir_database_connection_logging_path = dirname($database_connection_logging_path)

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
  } ->
  exec { "yanic mkdir webserver_webroot":
    command => "/bin/mkdir -p ${webserver_webroot}",
    unless  => "/usr/bin/test -d ${webserver_webroot}",
  } ->
  exec { "yanic mkdir dir_nodes_state_path":
    command => "/bin/mkdir -p ${dir_nodes_state_path}",
    unless => "/usr/bin/test -d ${dir_nodes_state_path}",
  } ->
  exec { "yanic mkdir dir_nodes_output_meshviewer_ffrgb_path":
    command => "/bin/mkdir -p ${dir_nodes_output_meshviewer_ffrgb_path}",
    unless => "/usr/bin/test -d ${dir_nodes_output_meshviewer_ffrgb_path}",
  } ->
  exec { "yanic mkdir dir_nodes_output_meshviewer_nodes_path":
    command => "/bin/mkdir -p ${dir_nodes_output_meshviewer_nodes_path}",
    unless => "/usr/bin/test -d ${dir_nodes_output_meshviewer_nodes_path}",
  } ->
  exec { "yanic mkdir dir_nodes_output_meshviewer_graph_path":
    command => "/bin/mkdir -p ${dir_nodes_output_meshviewer_graph_path}",
    unless => "/usr/bin/test -d ${dir_nodes_output_meshviewer_graph_path}",
  } ->
  exec { "yanic mkdir dir_nodes_output_nodelist_path":
    command => "/bin/mkdir -p ${dir_nodes_output_nodelist_path}",
    unless => "/usr/bin/test -d ${dir_nodes_output_nodelist_path}",
  } ->
  exec { "yanic mkdir dir_database_connection_logging_path":
    command => "/bin/mkdir -p ${dir_database_connection_logging_path}",
    unless => "/usr/bin/test -d ${dir_database_connection_logging_path}",
  }

}

