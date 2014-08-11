# -*- coding:utf-8 -*-

require 'spec_helper'

describe package('php') do
  it { should be_installed.with_version '5.5' }
end

describe package('php-fpm') do
  it { should be_installed }
end

# describe package('php-mbstring') do
#   it { should be_installed }
# end

# describe package('php-mysql') do
#   it { should be_isntalled }
# end

# describe package('php-pdo') do
#   it { should be_installed }
# end

# describe package('php-xml') do
#   it { should be_installed }
# end
