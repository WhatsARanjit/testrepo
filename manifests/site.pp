filebucket { 'main':
  server => $::settings::server,
  path   => false,
}

File { backup => 'main' }
Package { allow_virtual => true }

node default {
}

site {
  canary::on { 'East Coast':
    test_env  => 'canary_test',
    test_node => 'node1.whatsaranjit.com',
    nodes => {
      Node['puppet2016.1.1.puppetlabs.vm'] => Canary::Group['East Coast'],
      Node['node1.whatsaranjit.com']       => Canary::Node['East Coast'],
    }
  }
}

