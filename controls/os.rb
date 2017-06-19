control 'os'do
describe os[:family] do
  it { should eq 'debian' }
end
describe interface('enp0s3') do
  it { should exist }
end
describe interface('enp0s3') do
  it { should be_up }
end

end

