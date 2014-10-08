class mountmysql {

  file { '/mnt/mysql':
    ensure => "directory",
    owner => 'mysql',
    group => 'mysql',
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