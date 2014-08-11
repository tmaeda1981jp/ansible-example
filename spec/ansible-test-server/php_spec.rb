# -*- coding:utf-8 -*-

require 'spec_helper'

describe package('php') do
  it { should be_installed.with_version '5.5' }
end

describe package('php-fpm') do
  it { should be_installed }
end

describe service('php-fpm') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/php-fpm.d/www.conf') do
  it { should be_file }
  its(:content) { should match(/group = nginx/) }
  its(:content) { should match(/user = nginx/) }
end

describe package('php-mbstring') do
  it { should be_installed }
end

describe package('php-mysqlnd') do
  it { should be_installed }
end

describe package('php-pdo') do
  it { should be_installed }
end

describe package('php-xml') do
  it { should be_installed }
end

