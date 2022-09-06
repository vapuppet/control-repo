class profile::vsftpd::mod::vsftpdmod1 {
class { 'vsftpd':
  anonymous_enable  => 'YES',
  write_enable      => 'YES',
  ftpd_banner       => 'Marmotte FTP Server Modified',
  chroot_local_user => 'YES',
  }
}
