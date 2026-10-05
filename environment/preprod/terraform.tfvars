resource_groups = {
  rg1 = {
    name     = "rg-preprod"
    location = "central india"
  }
}

virtual_networks = {
  vnet1 = {
    name                = "vnet-preprod"
    location            = "central india"
    resource_group_name = "rg-preprod"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "subnet-preprod"
    resource_group_name  = "rg-preprod"
    virtual_network_name = "vnet-preprod"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "subnet-preprod-2"
    resource_group_name  = "rg-preprod"
    virtual_network_name = "vnet-preprod"
    address_prefixes     = ["10.0.2.0/24"]
  }

  subnet3 = {
    name                 = "subnet-preprod-3"
    resource_group_name  = "rg-preprod"
    virtual_network_name = "vnet-preprod"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

public_ips = {
  pip1 = {
    name                = "pip-preprod"
    location            = "central india"
    resource_group_name = "rg-preprod"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "pip-preprod-2"
    location            = "central india"
    resource_group_name = "rg-preprod"
    allocation_method   = "Static"
  }
  pip3 = {
    name                = "pip-preprod-3"
    location            = "central india"
    resource_group_name = "rg-preprod"
    allocation_method   = "Static"
  }
}

virtual_machines = {
  vm1 = {
    name                   = "vm-preprod"
    location               = "central india"
    resource_group_name    = "rg-preprod"
    nic_name               = "nic-preprod"
    vm_size                = "Standard_DS1_v2"
    admin_username         = "adminuser"
    admin_password         = "Adminuser@123"
    public_ip_address_name = "pip-preprod"
    virtual_network_name   = "vnet-preprod"
    subnet_name            = "subnet-preprod"
  }
  vm2 = {
    name                   = "vm-preprod-2"
    location               = "central india"
    resource_group_name    = "rg-preprod"
    nic_name               = "nic-preprod-2"
    vm_size                = "Standard_DS1_v2"
    admin_username         = "adminuser"
    admin_password         = "Adminuser@123"
    public_ip_address_name = "pip-preprod-2"
    virtual_network_name   = "vnet-preprod"
    subnet_name            = "subnet-preprod-2"
  }
  vm3 = {
    name                   = "vm-preprod-3"
    location               = "central india"
    resource_group_name    = "rg-preprod"
    nic_name               = "nic-preprod-3"
    vm_size                = "Standard_DS1_v2"
    admin_username         = "adminuser"
    admin_password         = "Adminuser@123"
    public_ip_address_name = "pip-preprod-3"
    virtual_network_name   = "vnet-preprod"
    subnet_name            = "subnet-preprod-3"
  }
}