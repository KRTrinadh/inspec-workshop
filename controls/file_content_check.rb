control 'FILE CONTENT'do
impact 1.0
title "checking file content"
describe file('/etc/ssh/ssh_config') do
		it { should exist }
		its(:content) { should match(/PasswordAuthentication no/) }
	end
end
