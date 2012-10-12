require 'spec_helper'

describe 'puppet' do
  it { should include_class 'stdlib' }

  context 'on debian systems' do
    let(:facts) do
      {
        :osfamily => 'debian'
      }
    end

    it { should include_class 'puppet::debian' }
  end

  context 'on redhat systems' do
    let(:facts) do
      {
        :osfamily => 'redhat'
      }
    end

    it { should_not include_class 'puppet::debian' }
  end
end
