require 'spec_helper'
describe 'yanic' do

  context 'with defaults for all parameters' do
    it { should contain_class('yanic') }
  end
end
