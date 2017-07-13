control "SSH-SERVICE" do
impact 1.0
title "ssh service status and port checking "
describe service 'ssh' do
		it { should be_enabled }
		it { should be_running }
		it { should be_installed }
	end
describe port '22' do                       
		it { should be_listening }
	end
end


control "SSH-CONFIG" do
impact 1.0
title "checking password part in configuration"
describe ssh_config do
		its('PasswordAuthentication') { should eq 'no' }
	end
end
