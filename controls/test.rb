control "world-1.0" do                                # A unique ID for this control
  impact 1.0                                          # Just how critical is
  title "Hai harish"                                 # Readable by a human
  desc "Text should include the words 'hai harish'." # Optional description
  describe file('/root/text') do                       # The actual test
   its('content') { should match 'hai harish' }      # You could just do the "describe file" block if you want. The  
  end                                                 # rest is just metadata, but it's a good habit to get into.
end


