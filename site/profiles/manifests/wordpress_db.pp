class profiles::wordpress_db {
  $db_host = '%'
  $db_name = 'wordpress'
  $db_password = 'wordpress'

  mysql_database { "${db_host}/${db_name}":
    name => $db_name,
    charset => 'utf8',
  }

  mysql_user { "${db_user}@${db_host}":
    password_hash => mysql_password($db_password),
  }
  mysql_grant { "${db_user}@${db_host}/${db_name}.*":
    table      => "${db_name}.*",
    user       => "${db_user}@${db_host}",
    privileges => ['ALL'],
  }
}
