control "SSH-SERVICE" do
impact 1.0
title "ssh service status and port checking "
describe service 'ssh' do
		it { should be_enabled }
		it { should be_running }
		it { should be_installed }
	end
describe port '1999' do                       
		it { should be_listening }
	end
end
