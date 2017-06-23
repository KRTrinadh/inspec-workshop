control "FILE OWNERSHIP" do
impact 1.0
title "ownership of file - text "
describe file('/root/INSPEC/text') do
		its('owner') { should eq 'root' }
		its('group') { should eq 'root'}
	end
end


control "FILE PERMISSIONS" do
impact 1.0
title "permissions of file - myapp.conf"
describe file('/etc/myapp.conf') do
  		it { should exist }
  		its ('mode') { should cmp '0644' }
	end
end
