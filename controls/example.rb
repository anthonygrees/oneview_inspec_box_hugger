# encoding: utf-8
# copyright: 2017, The Authors

control '#1 oneview-ETHERNET' do
  impact 1.0
  title 'Checks that a specific network has been configured correctly'

  describe oneview_ethernet_network(name: 'ChefEthernet_3001') do
    its('type') { should cmp 'ethernet-networkV300' }
    its('ethernet_network_type') { should cmp 'Tagged' }
    its('vlan_id') { should eq 3001 }  
    end
end

control '#2 oneview-FC' do
  impact 1.0
  title 'Checks that a specific fibre channel has been configured correctly'

  describe oneview_fc_network(name: 'ChefFibre Channel A') do
    its('fabric_type') { should eq 'FabricAttach' }
    its('auto_login_redistribution') { should eq true }
  end
end

control '#3 oneview-EG' do
  impact 1.0
  title 'Checks that a specific Enclosure Group has been configured correctly'

  describe oneview_enclosure_group(name: 'ChefEnclosureGroup1') do
    its('name') { should eq 'ChefEnclosureGroup1' }
    its('state') { should eq 'Normal' }
    its('port_mapping_count') { should eq 8 }
    its('power_mode') { should eq 'RedundantPowerFeed' }
    its('status') { should eq 'OK' }
    its('type') { should eq 'EnclosureGroupV300' }
    its('uri') { should contain 'c5bd379b-2cf2-4a90-9dcb-03699e765f23' }
    it { should have_associated_logical_interconnect_groups }
  end
end

control '#4 oneview-Enclosure_Group_Interconnect' do
  impact 1.0
  title 'Checks that a specific enclosure group interconnect bay mappings has been configured correctly'

  describe oneview_enclosure_group_interconnect_bay_mappings(name: 'ChefEnclosureGroup1') do
    its('logical_interconnect_group_name') { should cmp 'ChefLogicalInterconnectGroup1' }
    its('interconnect_bay') { should cmp 'ChefLogicalInterconnectGroup1' }
  end
end

control '#5 oneview-Server_Profile' do
  impact 1.0
  title 'Checks that a specific server group has been configured correctly'

  describe oneview_server_profile(name: 'Docker_Worker_Profile') do
    its('affinity') { should eq 'Bay' }
    # its('associated_server') { should eq 'value' }
    # its('have_managed_bios') { should eq 'value' }
    # its('have_bios_overrides') { should eq 'value' }
    # its('bios_x') { should eq 'value' }
    # its('order') { should eq 'value' }
    # its('pxe_boot_policy') { should eq 'value' }
    its('category') { should eq 'server-profiles' }
    # its('connections') { should eq 'value' }
    its('created') { should >= '2018-05-20T03:52:53.397Z' }
    # its('description') { should eq 'value' }
    # its('e_tag') { should eq 'value' }
    # its('enclosure_bay') { should eq 'value' }
    its('name') { should eq 'Docker_Worker_Profile' }
    its('state') { should eq 'Normal' }
    its('status') { should eq 'OK' }
  end
end