control "iptables" do
impact 1.0
title "iptables"
describe iptables(chain: 'INPUT', policy:'ACCEPT') do
  it { should have_rule('-A INPUT -p icmp -m icmp --icmp-type 0 -j ACCEPT') }
end
end
