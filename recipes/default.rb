#
# Cookbook:: lenovo_systemupdate
# Recipe:: default
#
# Copyright:: 2019, Nghiem Ba Hieu
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if node['platform'] !~ /windows/
  log 'Unsupported platform for LENOVO System Update' do
    message "Does not support #{node['platform']} platform"
    level :warn
  end
  return
end

hardware_vendor = node['kernel']['cs_info']['manufacturer']

windows_package node['lenovo_systemupdate']['package_name'] do
  source node['lenovo_systemupdate']['source']
  checksum node['lenovo_systemupdate']['checksum'] if node['lenovo_systemupdate']['checksum']
  action :install
  only_if { hardware_vendor =~ /LENOVO/ || node['lenovo_systemupdate']['non_lenovo_system'] }
end
