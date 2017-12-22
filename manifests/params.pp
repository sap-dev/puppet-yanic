class yanic::params {

  $respondd_enable           = true
  $respondd_synchronize      = '1m'
  $respondd_collect_interval = '1m'
  $respondd_sites            = []
  $respondd_port             = 0

  $webserver_enable  = false
  $webserver_bind    = '127.0.0.1:8080'
  $webserver_webroot = '/var/www/html/meshviewer'

  $nodes_enable        = true
  $nodes_state_path    = '/var/lib/yanic/state.json'
  $nodes_prune_after   = '7d'
  $nodes_offline_after = '10m'

  $nodes_output_meshviewer_ffrgb_enable = true
  $nodes_output_meshviewer_ffrgb_path   = '/var/www/html/meshviewer/data/meshviewer.json'

  $nodes_output_meshviewer_ffrgb_filter_no_owner     = false
  $nodes_output_meshviewer_ffrgb_filter_blacklist    = []
  $nodes_output_meshviewer_ffrgb_filter_has_location = true

  $nodes_output_meshviewer_ffrgb_filter_in_area_latitude_min  = 34.30
  $nodes_output_meshviewer_ffrgb_filter_in_area_latitude_max  = 71.85
  $nodes_output_meshviewer_ffrgb_filter_in_area_longitude_min = -24.96
  $nodes_output_meshviewer_ffrgb_filter_in_area_longitude_max = 39.72

  $nodes_output_meshviewer_enable     = false
  $nodes_output_meshviewer_version    = 2
  $nodes_output_meshviewer_nodes_path = '/var/www/html/meshviewer/data/nodes.json'
  $nodes_output_meshviewer_graph_path = '/var/www/html/meshviewer/data/graph.json'

  $nodes_output_meshviewer_filter_no_owner = false

  $nodes_output_nodelist_enable = true
  $nodes_output_nodelist_path   = '/var/www/html/meshviewer/data/nodelist.json'

  $nodes_output_nodelist_filter_no_owner = false

  $database_delete_after    = '7d'
  $database_delete_interval = '1h'

  $database_connection_influxdb_enable   = false
  $database_connection_influxdb_address  = 'http://localhost:8086'
  $database_connection_influxdb_database = 'ffhb'
  $database_connection_influxdb_username = ''
  $database_connection_influxdb_password = ''

  $database_connection_influxdb_tags = []

  $database_connection_logging_enable = false
  $database_connection_logging_path   = '/var/log/yanic.log'

  $database_connection_graphite_enable  = false
  $database_connection_graphite_address = 'localhost:2003'
  $database_connection_graphite_prefix  = 'freifunk'

}

