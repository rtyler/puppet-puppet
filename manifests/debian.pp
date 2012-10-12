class puppet::debian {
  include apt

  apt::source { 'puppetlabs':
    location   => 'https://apt.puppetlabs.com',
    repos      => 'main',
    key        => '4BD6EC30',
    key_server => 'pgp.mit.edu',
  }
}
