class yanic (
  Boolean       $respondd_enable                                            = $yanic::params::respondd_enable,
  String        $respondd_synchronize                                       = $yanic::params::respondd_synchronize,
  String        $respondd_collect_interval                                  = $yanic::params::respondd_collect_interval,
  Array[String] $respondd_sites                                             = $yanic::params::respondd_sites,
  Integer       $respondd_port                                              = $yanic::params::respondd_port,
  Boolean       $webserver_enable                                           = $yanic::params::webserver_enable,
  String        $webserver_bind                                             = $yanic::params::webserver_bind,
  String        $webserver_webroot                                          = $yanic::params::webserver_webroot,
  Boolean       $nodes_enable                                               = $yanic::params::nodes_enable,
  String        $nodes_state_path                                           = $yanic::params::nodes_state_path,
  String        $nodes_prune_after                                          = $yanic::params::nodes_prune_after,
  String        $nodes_offline_after                                        = $yanic::params::nodes_offline_after,
  Boolean       $nodes_output_meshviewer_ffrgb_enable                       = $yanic::params::nodes_output_meshviewer_ffrgb_enable,
  String        $nodes_output_meshviewer_ffrgb_path                         = $yanic::params::nodes_output_meshviewer_ffrgb_path,
  Boolean       $nodes_output_meshviewer_ffrgb_filter_no_owner              = $yanic::params::nodes_output_meshviewer_ffrgb_filter_no_owner,
  Array[String] $nodes_output_meshviewer_ffrgb_filter_blacklist             = $yanic::params::nodes_output_meshviewer_ffrgb_filter_blacklist,
  Boolean       $nodes_output_meshviewer_ffrgb_filter_has_location          = $yanic::params::nodes_output_meshviewer_ffrgb_filter_has_location,
  Float         $nodes_output_meshviewer_ffrgb_filter_in_area_latitude_min  = $yanic::params::nodes_output_meshviewer_ffrgb_filter_in_area_latitude_min,
  Float         $nodes_output_meshviewer_ffrgb_filter_in_area_latitude_max  = $yanic::params::nodes_output_meshviewer_ffrgb_filter_in_area_latitude_max,
  Float         $nodes_output_meshviewer_ffrgb_filter_in_area_longitude_min = $yanic::params::nodes_output_meshviewer_ffrgb_filter_in_area_longitude_min,
  Float         $nodes_output_meshviewer_ffrgb_filter_in_area_longitude_max = $yanic::params::nodes_output_meshviewer_ffrgb_filter_in_area_longitude_max,
  Boolean       $nodes_output_meshviewer_enable                             = $yanic::params::nodes_output_meshviewer_enable,
  Integer[1,2]  $nodes_output_meshviewer_version                            = $yanic::params::nodes_output_meshviewer_version,
  String        $nodes_output_meshviewer_nodes_path                         = $yanic::params::nodes_output_meshviewer_nodes_path,
  String        $nodes_output_meshviewer_graph_path                         = $yanic::params::nodes_output_meshviewer_graph_path,
  Boolean       $nodes_output_meshviewer_filter_no_owner                    = $yanic::params::nodes_output_meshviewer_filter_no_owner,
  Boolean       $nodes_output_nodelist_enable                               = $yanic::params::nodes_output_nodelist_enable,
  String        $nodes_output_nodelist_path                                 = $yanic::params::nodes_output_nodelist_path,
  Boolean       $nodes_output_nodelist_filter_no_owner                      = $yanic::params::nodes_output_nodelist_filter_no_owner,
  String        $database_delete_after                                      = $yanic::params::database_delete_after,
  String        $database_delete_interval                                   = $yanic::params::database_delete_interval,
  Boolean       $database_connection_influxdb_enable                        = $yanic::params::database_connection_influxdb_enable,
  String        $database_connection_influxdb_address                       = $yanic::params::database_connection_influxdb_address,
  String        $database_connection_influxdb_database                      = $yanic::params::database_connection_influxdb_database,
  String        $database_connection_influxdb_username                      = $yanic::params::database_connection_influxdb_username,
  String        $database_connection_influxdb_password                      = $yanic::params::database_connection_influxdb_password,
  Array[Struct[{
    key => String,
    value => String
  }]]           $database_connection_influxdb_tags                          = $yanic::params::database_connection_influxdb_tags,
  Boolean       $database_connection_logging_enable                         = $yanic::params::database_connection_logging_enable,
  String        $database_connection_logging_path                           = $yanic::params::database_connection_logging_path,
  Boolean       $database_connection_graphite_enable                        = $yanic::params::database_connection_graphite_enable,
  String        $database_connection_graphite_address                       = $yanic::params::database_connection_graphite_address,
  String        $database_connection_graphite_prefix                        = $yanic::params::database_connection_graphite_prefix
) inherits yanic::params {

  class { 'yanic::install': } ->
  class { 'yanic::config': } ~>
  class { 'yanic::service': }

  contain yanic::install
  contain yanic::config
  contain yanic::service

  create_resources('yanic::interface', hiera('yanic::interface', {}))

}

