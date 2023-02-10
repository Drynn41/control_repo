class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  
  service { 'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3gz42Sqef6jc+1lZF4oTcKkzXesaTxXJI9COPLNIuBQ9mtAgRZcrFgbL8Pzb9x9vo610t2AwoR3+Dq1Ex3xVFAv1QflpK4m4QlOmZdncPy7aDUVgnFPDRkzoDHZzH1obyt/vxCBKR0cgRZghvYcCmSwmkJU792cqswA2CZ480NuLFTkNAs8N8t5RuhG5eIn1aNTrTXPY+9PWCQTllKV+MKcpUXYo8P2t2HdQ3GoFl3Dw5ugprKVeNvoqQEUfBneetMK5eEPICXpN5+dBIhyoNe5xo7+X5hI4qhcrAz0fy/lUBgfn0g8zkYA5jeMC6Tyt3P9ObKhMDudp/PgAmGlbv',
  }

}
