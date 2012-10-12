require 'spec_helper'

describe 'puppet::debian' do
  it { should include_class 'apt' }

end
