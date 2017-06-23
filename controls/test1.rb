#  title 'remote sync server'
#  desc 'remoteserver synching '
#if service('ntp').running?
#  describe command('ntpq -p') do
#     its(:stdout) { should match /ntp.ubuntu.com/  }
#  end
#else
#output=command('echo test').stdout
#describe command('echo test') do
#its('stderr') { should eq output }
#  end
# end
#end 
#
#
