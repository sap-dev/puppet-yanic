class yanic::config inherits yanic {

  concat { '/etc/yanic.conf':
    ensure         => present,
    owner          => 'root',
    group          => 'root',
  }

  concat::fragment { 'yanc-conf-top':
    target  => '/etc/yanic.conf',
    order   => 0,
    content => epp('yanic/yanic.conf.top.epp', {
      respondd_enable           => $respondd_enable,
      respondd_synchronize      => $respondd_synchronize,
      respondd_collect_interval => $respondd_collect_interval,
    })
  }

  concat::fragment { 'yanc-conf-bottom':
    target  => '/etc/yanic.conf',
    order   => 2,
    content => epp('yanic/yanic.conf.bottom.epp', {
      respondd_sites                                             => $respondd_sites,
      respondd_port                                              => $respondd_port,
      webserver_enable                                           => $webserver_enable,
      webserver_bind                                             => $webserver_bind,
      webserver_webroot                                          => $webserver_webroot,
      nodes_enable                                               => $nodes_enable,
      nodes_state_path                                           => $nodes_state_path,
      nodes_prune_after                                          => $nodes_prune_after,
      nodes_offline_after                                        => $nodes_offline_after,
      nodes_output_meshviewer_ffrgb_enable                       => $nodes_output_meshviewer_ffrgb_enable,
      nodes_output_meshviewer_ffrgb_path                         => $nodes_output_meshviewer_ffrgb_path,
      nodes_output_meshviewer_ffrgb_filter_no_owner              => $nodes_output_meshviewer_ffrgb_filter_no_owner,
      nodes_output_meshviewer_ffrgb_filter_blacklist             => $nodes_output_meshviewer_ffrgb_filter_blacklist,
      nodes_output_meshviewer_ffrgb_filter_has_location          => $nodes_output_meshviewer_ffrgb_filter_has_location,
      nodes_output_meshviewer_ffrgb_filter_in_area_latitude_min  => $nodes_output_meshviewer_ffrgb_filter_in_area_latitude_min,
      nodes_output_meshviewer_ffrgb_filter_in_area_latitude_max  => $nodes_output_meshviewer_ffrgb_filter_in_area_latitude_max,
      nodes_output_meshviewer_ffrgb_filter_in_area_longitude_min => $nodes_output_meshviewer_ffrgb_filter_in_area_longitude_min,
      nodes_output_meshviewer_ffrgb_filter_in_area_longitude_max => $nodes_output_meshviewer_ffrgb_filter_in_area_longitude_max,
      nodes_output_meshviewer_enable                             => $nodes_output_meshviewer_enable,
      nodes_output_meshviewer_version                            => $nodes_output_meshviewer_version,
      nodes_output_meshviewer_nodes_path                         => $nodes_output_meshviewer_nodes_path,
      nodes_output_meshviewer_graph_path                         => $nodes_output_meshviewer_graph_path,
      nodes_output_meshviewer_filter_no_owner                    => $nodes_output_meshviewer_filter_no_owner,
      nodes_output_nodelist_enable                               => $nodes_output_nodelist_enable,
      nodes_output_nodelist_path                                 => $nodes_output_nodelist_path,
      nodes_output_nodelist_filter_no_owner                      => $nodes_output_nodelist_filter_no_owner,
      database_delete_after                                      => $database_delete_after,
      database_delete_interval                                   => $database_delete_interval,
      database_connection_influxdb_enable                        => $database_connection_influxdb_enable,
      database_connection_influxdb_address                       => $database_connection_influxdb_address,
      database_connection_influxdb_database                      => $database_connection_influxdb_database,
      database_connection_influxdb_username                      => $database_connection_influxdb_username,
      database_connection_influxdb_password                      => $database_connection_influxdb_password,
      database_connection_influxdb_tags                          => $database_connection_influxdb_tags,
      database_connection_logging_enable                         => $database_connection_logging_enable,
      database_connection_logging_path                           => $database_connection_logging_path,
      database_connection_graphite_enable                        => $database_connection_graphite_enable,
      database_connection_graphite_address                       => $database_connection_graphite_address,
      database_connection_graphite_prefix                        => $database_connection_graphite_prefix,
    })
  }

}

