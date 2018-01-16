describe http('http://localhost/wp-admin') do
  its('status') { should eq 200 }
end

