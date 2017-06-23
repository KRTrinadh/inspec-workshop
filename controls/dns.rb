control "NAMESERVER" do
impact 1.0
title "checking servername"
describe file('/etc/resolv.conf') do   
		its(:content) { should match /nameserver 127.0.1.1/ }
	end
end
