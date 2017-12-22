class yanic::service inherits yanic {

  service { 'yanic':
    enable   => true,
    ensure   => running,
  }

}

