class profile::users {
user { 'victor':
  ensure   => 'present',
  provider => 'useradd',
  }
}
#