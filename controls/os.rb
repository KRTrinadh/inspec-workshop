control 'OS-FAMILY'do
impact 1.0
title "checking os family"
describe os[:family] do
  		it { should eq 'debian' }
	end
end


control 'INTERFACE'do
impact 1.0
title "checking interface is exist and up "
describe interface('enp0s3') do
		it { should exist }
	end
describe interface('enp0s3') do
		it { should be_up }
	end
end


control 'OS-VERSION'do
impact 1.0
title "checking os version"
describe command('lsb_release -a') do
		its('stdout') { should match /16.10/ }
	end
end
