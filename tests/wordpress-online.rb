describe http('http://localhost/wp-login.php') do
  its('status') { should eq 200 }
end

