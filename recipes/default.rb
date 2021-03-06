#
# Cookbook:: kibana5
# Recipe:: default
#
# Copyright:: 2017, Parallels International GmbH
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

kibana5_install 'kibana'

kibana5_configure 'kibana' do
  svc_name node['kibana5']['service_name']
  svc_user node['kibana5']['service_user']
  svc_group node['kibana5']['service_group']
  configuration node['kibana5']['config']
end
