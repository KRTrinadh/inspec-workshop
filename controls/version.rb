control "nginx" do                                # A unique ID for this control
  impact 1.0                                          # Just how critical is
  title "redis"                                 # Readable by a human
   describe package('nginx') do
      it { should be_installed }
  end                                                 # rest is just metadata, but it's a good habit to get into.
    describe command('/usr/sbin/nginx -v') do 
	its ('stdout') {should cmp 'nginx/1.10.1 (Ubuntu)'}
end
end


