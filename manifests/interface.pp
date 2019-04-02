define yanic::interface {

  include yanic
  include yanic::params

  concat::fragment { "yanic-configinterface-${title}":
    target  => '/etc/yanic.conf',
    order   => 1,
    content => "ifname = \"${title}\"",
  }

}

