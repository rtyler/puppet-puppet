require 'spec_helper'

describe 'puppet::debian' do
  let(:facts) do
    {
      :osfamily       => 'debian',
      :lsbdistcodename => 'lucid'
    }
  end
  it { should include_class 'apt' }
  it { should contain_apt__source 'puppetlabs' }
end
