class mountmysql {

  file { '/mnt/mysql':
    ensure => "directory",
    owner => 'ubuntu',
    group => 'ubuntu',
  }

  mount { '/mnt/mysql':
    device => 'LABEL=mysql',
    ensure => mounted,
    atboot => true,
    fstype => "ext4",
    options => 'defaults'
  }

 
   File['/mnt/mysql'] -> Mount['/mnt/mysql']

}