control 'mysql-conf-0' do
  impact 0.3
  title 'Make sure MySQL is installed from an OS supported package'
  desc '
    All software should be supported and updated regularly. To ensure this,
    use the package provided by the OS vendor.
  '
  describe service('mysql.exe') do
 it { should be_installed }
 it { should be_enabled }
 it { should be_running }
end
end

describe port(3306) do
  it { should be_listening }
  its('processes') {should include 'syslog'}
end