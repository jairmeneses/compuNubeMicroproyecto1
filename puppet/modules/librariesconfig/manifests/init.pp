class librariesconfig {
  exec {'instalacion de express':
    command => 'npm install express',
    path    => '/usr/bin/',
    cwd     => '/home/vagrant/consulService/app',
    require => Package['npm'];
  }
  exec {'instalacion de consul':  
    command => 'npm install consul',
    path    => '/usr/bin/',
    cwd     => '/home/vagrant/consulService/app',
    require => Package['npm'];
  }

  
}
