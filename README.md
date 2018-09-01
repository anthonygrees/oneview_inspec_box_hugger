# OneView InSpec Box Hugger

This example shows the implementation of an InSpec profile that can test HPE OneView.

## Configuration
Perform the following configuration

### HPE OneView Plugin
You will need the HPE OneView Plugin - https://github.com/inspec/inspec-hpe-oneview

```inspec-hpe-oneview``` is a plugin for InSpec and may be installed as follows:
```
# install InSpec
gem install inspec
```
Then install the ```inspec-hpe-oneview``` plugin via ```~/.inspec/plugins``` or a gem build:
```
# Build the `inspec-hpe-oneview` then install:
git clone https://github.com/inspec/inspec-hpe-oneview.git && cd inspec-hpe-oneview && gem build *gemspec && gem install *gem
inspec oneview help
```

### Set the InSpec-OneView dependency
You need to reference https://github.com/chef/inspec-oneview
```
name: my-profile
title: My own Oneview profile
version: 0.1.0
depends:
  - name: oneview
    url: https://github.com/chef-partners/inspec-oneview/archive/master.tar.gz
```

### Set your OneView Credentials
Create a file called ```.oneview` in the ```/Users/<you>``` directory and add the information below.
```bash
#
# It actualy uses this file /Users/<yourname>/.oneview ! ! !
#
url: https://oneview_url
user: <your_user>
password: <your_passsword>
api_version: 300
```

### Write your InSpec Controls for OneView
Here is an example of an ethernet check
```
control 'oneview-1' do
  impact 1.0
  title 'Checks that a specific network has been configured correctly'

  describe oneview_ethernet_network(name: 'InSpec-Ethernet-Network') do
    its('type') { should cmp 'ethernet-networkV300' }
    its('ethernet_network_type') { should cmp 'Tagged' }
    its('vlan_id') { should eq 1 }  end
end
```
You can find a full list of available resources here - https://github.com/chef/inspec-oneview

## How to execute InSpec Box Hugger
To run on the command line
```bash
$  inspec exec .
```
To export output to the A2 Reporter
```bash 
$  inspec exec . --json-config inspec.json
```
The A2 reporter is configured in the ```inspec.json``` file

## Video Demo
The following video shows the code in action.

[![Alt text](https://img.youtube.com/vi/zjqCyRchq_k/0.jpg)](https://youtu.be/zjqCyRchq_k)

## License and Author

* Author:: Anthony Rees <anthony@chef.io>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
