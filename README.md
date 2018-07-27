# OneView InSpec Box Hugger

This example shows the implementation of an InSpec profile that can test HPE OneView.

## How to run
To run on the command line
```bash
$  inspec exec .
```
To export output to the A2 Reporter
```bash 
$  inspec exec . --json-config inspec.json
```
The A2 reporter is configured in the ```inspec.json``` file

## OneView Credentials

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

## Video Demo

[![Alt text](https://img.youtube.com/vi/VID/0.jpg)](https://youtu.be/zjqCyRchq_k)

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
