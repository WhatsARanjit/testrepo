class profiles::wordpress_web {
  class { 'wordpress':
    install_dir    => '/var/www/html',
    create_db_user => false,
    create_db      => false,
    db_host        => $trusted['extensions']['pp_application'],
  }
}
