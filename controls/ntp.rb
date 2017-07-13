control "NTP-PORT" do
impact 1.0
title "ntp service port checking "
describe port (123) do
		its('processes') { should include 'ntpd' }
		its('protocols') { should include 'udp' }
		its('addresses') { should include '0.0.0.0' }
	end
end

#
#control "NTP-SERVICE" do
#impact 1.0
#title "ntp service status checking "
#describe service 'ntp' do
#		it { should be_installed }
#		it { should be_running }
#		it { should be_enabled }
#	end
#end
#
#
#control "NTP-CONFIG" do
#impact 1.0
#title "checks of configuration file"
#describe ntp_conf do   
#		its('restrict') { should include '-4 default kod notrap nomodify nopeer noquery limited'}
#		its('pool') { should eq ["0.ubuntu.pool.ntp.org iburst", "1.ubuntu.pool.ntp.org iburst", "2.ubuntu.pool.ntp.org iburst", "3.ubuntu.pool.ntp.org iburst", "ntp.ubuntu.com"] }
#	end
#end
