control "ntp_basic" do
impact 1.0
title "ntp"
describe port (123) do
 its('processes') { should include 'ntpd' }
  its('protocols') { should include 'udp' }
  its('addresses') { should include '0.0.0.0' }
end
describe service 'ntp' do
 it { should be_installed }
 it { should be_running }
 it { should be_enabled }
end
describe ntp_conf do   

its('restrict') { should include '-4 default kod notrap nomodify nopeer noquery limited'}
its('pool') { should eq ["0.ubuntu.pool.ntp.org iburst", "1.ubuntu.pool.ntp.org iburst", "2.ubuntu.pool.ntp.org iburst", "3.ubuntu.pool.ntp.org iburst", "ntp.ubuntu.com"] }
end
end


control 'checking_ remote sync server' do
  impact 1.0
  title 'remote sync server'
  desc 'remoteserver synching '
if service('ntp').running?
  describe command('ntpq -p') do
     its(:stdout) { should match /ntp.ubuntu.com/  }
  end
else
output=command('echo test').stdout
describe command('echo test') do
its('stderr') { should eq output }
  end
 end
end 


