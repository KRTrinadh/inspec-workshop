control "CHEF" do
impact 1.0
title "chef-client version"
describe command('chef-client -v') do
		its('stdout') { should match /12.18.31/ }
	end
end
