# -*- coding:utf-8 -*-

require 'spec_helper'

describe package('ntp') do
  it { should be_installed }
end

describe service('ntpd') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/ntp.conf') do
  it { should be_file }
  its(:content) { should match(%r{^server ntp.nict.jp$}) }
  its(:content) { should match(%r{^server ntp.jst.mfeed.ad.jp$}) }
end
