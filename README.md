# puppet-yanic

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with yanic](#setup)
    * [Beginning with yanic](#beginning-with-yanic)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Installs and configures yanic.

## Setup

### Beginning with yanic

```puppet
class { 'yanic': }

yanic::interface { 'bat0': }
```

## Usage

```puppet
class { 'yanic':
  respondd\_enable                                                   => true,
  respondd\_synchronize                                              => '1m',
  respondd\_collect\_interval                                        => '1m',
  respondd\_sites                                                    => [],
  respondd\_port                                                     => 0,
  webserver\_enable                                                  => false,
  webserver\_bind                                                    => '127.0.0.1:8080',
  webserver\_webroot                                                 => '/var/www/html/meshviewer',
  nodes\_enable                                                      => true,
  nodes\_state\_path                                                 => '/var/lib/yanic/state.json',
  nodes\_prune\_after                                                => '7d',
  nodes\_offline\_after                                              => '10m',
  nodes\_output\_meshviewer\_ffrgb\_enable                           => true,
  nodes\_output\_meshviewer\_ffrgb\_path                             => '/var/www/html/meshviewer/data/meshviewer.json',
  nodes\_output\_meshviewer\_ffrgb\_filter\_no\_owner                => false,
  nodes\_output\_meshviewer\_ffrgb\_filter\_blacklist                => [],
  nodes\_output\_meshviewer\_ffrgb\_filter\_has\_location            => true,
  nodes\_output\_meshviewer\_ffrgb\_filter\_in\_area\_latitude\_min  => 34.30,
  nodes\_output\_meshviewer\_ffrgb\_filter\_in\_area\_latitude\_max  => 71.85,
  nodes\_output\_meshviewer\_ffrgb\_filter\_in\_area\_longitude\_min => -24.96,
  nodes\_output\_meshviewer\_ffrgb\_filter\_in\_area\_longitude\_max => 39.72,
  nodes\_output\_meshviewer\_enable                                  => false,
  nodes\_output\_meshviewer\_version                                 => 2,
  nodes\_output\_meshviewer\_nodes\_path                             => '/var/www/html/meshviewer/data/nodes.json',
  nodes\_output\_meshviewer\_graph\_path                             => '/var/www/html/meshviewer/data/graph.json',
  nodes\_output\_meshviewer\_filter\_no\_owner                       => false,
  nodes\_output\_nodelist\_enable                                    => true,
  nodes\_output\_nodelist\_path                                      => '/var/www/html/meshviewer/data/nodelist.json',
  nodes\_output\_nodelist\_filter\_no\_owner                         => false,
  database\_delete\_after                                            => '7d',
  database\_delete\_interval                                         => '1h',
  database\_connection\_influxdb\_enable                             => false,
  database\_connection\_influxdb\_address                            => 'http://localhost:8086',
  database\_connection\_influxdb\_database                           => 'ffhb',
  database\_connection\_influxdb\_username                           => '',
  database\_connection\_influxdb\_password                           => '',
  database\_connection\_influxdb\_tags                               => [],
  database\_connection\_logging\_enable                              => false,
  database\_connection\_logging\_path                                => '/var/log/yanic.log',
  database\_connection\_graphite\_enable                             => false,
  database\_connection\_graphite\_address                            => 'localhost:2003',
  database\_connection\_graphite\_prefix                             => 'freifunk'
}

yanic::interface { 'bat0': }
```

## Reference

* class yanic
  * respondd\_enable (optional, default true)
  * respondd\_synchronize (optional, '1m')
  * respondd\_collect\_interval (optional, default '1m')
  * respondd\_sites (optional, default [])
  * respondd\_port (optional, default 0)
  * webserver\_enable (optional, default false)
  * webserver\_bind (optional, default '127.0.0.1:8080')
  * webserver\_webroot (optional, default '/var/www/html/meshviewer')
  * nodes\_enable (optional, default true)
  * nodes\_state\_path (optional, default '/var/lib/yanic/state.json')
  * nodes\_prune\_after (optional, default '7d')
  * nodes\_offline\_after (optional, default '10m')
  * nodes\_output\_meshviewer\_ffrgb\_enable (optional, default true)
  * nodes\_output\_meshviewer\_ffrgb\_path (optional, default '/var/www/html/meshviewer/data/meshviewer.json')
  * nodes\_output\_meshviewer\_ffrgb\_filter\_no\_owner (optional, default false)
  * nodes\_output\_meshviewer\_ffrgb\_filter\_blacklist (optional, default [])
  * nodes\_output\_meshviewer\_ffrgb\_filter\_has\_location (optional, default true)
  * nodes\_output\_meshviewer\_ffrgb\_filter\_in\_area\_latitude\_min (optional, default 34.30)
  * nodes\_output\_meshviewer\_ffrgb\_filter\_in\_area\_latitude\_max (optional, default 71.85)
  * nodes\_output\_meshviewer\_ffrgb\_filter\_in\_area\_longitude\_min (optional, default -24.96)
  * nodes\_output\_meshviewer\_ffrgb\_filter\_in\_area\_longitude\_max (optional, default 39.72)
  * nodes\_output\_meshviewer\_enable (optional, default false)
  * nodes\_output\_meshviewer\_version (optional, default 2)
  * nodes\_output\_meshviewer\_nodes\_path (optional, default '/var/www/html/meshviewer/data/nodes.json')
  * nodes\_output\_meshviewer\_graph\_path (optional, default '/var/www/html/meshviewer/data/graph.json')
  * nodes\_output\_meshviewer\_filter\_no\_owner (optional, default false)
  * nodes\_output\_nodelist\_enable (optional, default true)
  * nodes\_output\_nodelist\_path (optional, default '/var/www/html/meshviewer/data/nodelist.json')
  * nodes\_output\_nodelist\_filter\_no\_owner (optional, default false)
  * database\_delete\_after (optional, default '7d')
  * database\_delete\_interval (optional, default '1h')
  * database\_connection\_influxdb\_enable (optional, default false)
  * database\_connection\_influxdb\_address (optional, default 'http://localhost:8086')
  * database\_connection\_influxdb\_database (optional, default 'ffhb')
  * database\_connection\_influxdb\_username (optional, default '')
  * database\_connection\_influxdb\_password (optional, default '')
  * database\_connection\_influxdb\_tags (optional, default [])
  * database\_connection\_logging\_enable (optional, default false)
  * database\_connection\_logging\_path (optional, default '/var/log/yanic.log')
  * database\_connection\_graphite\_enable (optional, default false)
  * database\_connection\_graphite\_address (optional, default 'localhost:2003')
  * database\_connection\_graphite\_prefix (optional, default 'freifunk')

* define yanic::interface

## Limitations

### OS compatibility
* Debian 9

## Development

### How to contribute
Fork the project, work on it and submit pull requests, please.

