# # encoding: utf-8

# Inspec test for recipe lenovo_systemupdate::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

return unless os.windows?

describe registry_key('HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full') do
  its('Release') { should cmp > 379893 }
end

describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\TVSU_is1') do
  it { should exist }
  its('DisplayName') { should match(/Lenovo System Update/) }
end
