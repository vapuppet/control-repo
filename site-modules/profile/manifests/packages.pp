class profile::packages {
package { 'git':
  ensure   => latest,
  mark     => 'none',
  provider => 'apt',
}
}
