class baseconfig {
  exec { 'descarga consul':
    command => '/usr/bin/wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg';
  }

  exec { 'adicion consul':
    command => '/usr/bin/echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list';
  }
  package { ['consul']:
    ensure => present;
  }
  
 
}
