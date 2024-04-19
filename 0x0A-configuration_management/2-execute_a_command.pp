exec { 'killmenow_process':
  command     => '/usr/bin/pkill killmenow',
  refreshonly => true,
  subscribe   => Exec['check_killmenow_process'],
}

exec { 'check_killmenow_process':
  command     => '/usr/bin/pgrep killmenow',
  refreshonly => true,
}
