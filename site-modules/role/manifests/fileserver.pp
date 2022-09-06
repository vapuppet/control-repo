class role::fileserver {
  include profile::vsftpd::mod::vsftpdmod1
  include profile::base
}
