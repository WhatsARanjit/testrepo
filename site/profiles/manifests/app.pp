class profiles::app (
  $port = '8081',
) {

  class { 'java': }

  tomcat::install { '/opt/tomcat':
    source_url => 'http://mirror.cogentco.com/pub/apache/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz',
  }

  tomcat::instance { 'default':
    catalina_home => '/opt/tomcat',
  }

  tomcat::config::server::connector { 'default-connector':
    purge_connectors => true,
    catalina_base    => '/opt/tomcat',
    port             => $port,
    protocol         => 'HTTP/1.1',
  }

}
