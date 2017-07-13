control "IPTABLES - ICMP" do
impact 1.0
title "iptables rule - icmp "
describe iptables(chain: 'INPUT', policy:'ACCEPT') do
		it { should have_rule('-A INPUT -p icmp -m icmp --icmp-type 0 -j ACCEPT') }
	end
describe iptables(chain: 'INPUT', policy:'ACCEPT') do
		it { should have_rule('-A INPUT -p tcp --dport ssh -j ACCEPT') }
	end
end


