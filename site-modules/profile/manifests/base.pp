# The base profile should include component modules that will be on all nodes
class profile::base {
user { 'victor':
  ensure             => 'present',
  gid                => 1001,
  home               => '/home/victor',
  password           => '!',
  password_max_age   => 99999,
  password_min_age   => 0,
  password_warn_days => 7,
  provider           => 'useradd',
  shell              => '/bin/sh',
  uid                => 1001,
}
}
