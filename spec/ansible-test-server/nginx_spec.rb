require 'spec_helper'

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(80) do
  it { should be_listening }
end

describe file('/etc/nginx/conf.d/default.conf') do
  it { should be_file }
  its(:content) { should match(/root   \/var\/www;/) }
  its(:content) { should match(/index  index.html index.htm index.php/) }
  its(:content) { should match(/fastcgi_param  SCRIPT_FILENAME  \$document_root\$fastcgi_script_name;/) }
end
