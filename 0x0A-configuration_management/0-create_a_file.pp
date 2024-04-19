#The code will create a file name school inside the /temp directory
file { '/tmp/school':
  ensure  => 'present',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
