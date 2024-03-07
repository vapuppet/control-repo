class profile::packages {
package { 'git':
  ensure   => latest,
  ensure   => present,
  mark     => 'none',
  provider => 'apt',
}
}
