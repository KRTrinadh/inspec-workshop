control "ssh" do
impact 1.0
title "ssh"
desc "Testing the sshd service enabled/running."
describe service 'ssh' do
it { should be_enabled }
it { should be_running }
it { should be_installed }
end
end

control "ssh Port checking" do                                # A unique ID for this control
  impact 5.0                                          # Just how critical is
  title "SSH PORT CHECKING"                                 # Readable by a human
  #desc "checking the ports in server" # Optional description
  describe port '1999' do                       # The actual test
	it { should be_listening }
end
  end                                                 # rest is just metadata, but it's a good habit to get into.

