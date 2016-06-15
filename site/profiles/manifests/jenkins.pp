class profiles::jenkins {

  file { [
    '/home/tomcat',
    '/home/tomcat/.jenkins',
    ]:
    ensure => directory,
    user   => $tomcat::user,
    group  => $tomcat::group,
  }

  tomcat::war { 'jenkins.war':
    catalina_base => '/opt/tomcat8/webapps',
    war_source    => 'http://mirrors.jenkins-ci.org/war-stable/latest/jenkins.war',
  }

}
