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
