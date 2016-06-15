filebucket { 'main':
  server => $::settings::server,
  path   => false,
}

File { backup => 'main' }
Package { allow_virtual => true }

node default {
}

site {
  myapp { 'PVD':
    port => '8081',
    nodes => {
      Node['node1.whatsaranjit.com'] => MyApp::Web['PVD'],
      Node['node2.whatsaranjit.com'] => MyApp::App['PVD'],
    }
  }
}

