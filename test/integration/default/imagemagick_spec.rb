describe package('imagemagick') do
  it { should be_installed }
end

describe file('/etc/ImageMagick/policy.xml') do
  its('content') { should include('<policy domain="coder" rights="none" pattern="HTTPS" />') }
end
