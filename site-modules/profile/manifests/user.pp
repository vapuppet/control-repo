class profile::baseline {

user { 'victor':
  ensure   => 'present',
  provider => 'useradd',
  }
}
