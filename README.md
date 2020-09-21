# BuildToolsInstall

VM Scale Set CustomScriptExtension Command:

bash Azure CLI 

**Note: At the time of creating this, version 1.10 would not install the software. Falling back to version 1.9 works.**

```bash
az vmss extension set \
--vmss-name vmssagentspoolwindows \
--resource-group vmss-build-agents \
--name CustomScriptExtension \
--version 1.9 \
--publisher Microsoft.Compute \
--settings '{ "FileUris":["https://raw.githubusercontent.com/TCROC/BuildToolsInstall/master/Windows/InstallTools.ps1"], "commandToExecute": "Powershell.exe -ExecutionPolicy Unrestricted -File InstallTools.ps1" }'
```

Azure Virtual Machine Windows Scale Set Creation Example:

bash Azure CLI
```bash
az vmss create \
--name vmssagentspoolwindows \
--resource-group vmss-build-agents \
--image "Win2019Datacenter" \
--vm-sku Standard_DS2_v2 \
--storage-sku Premium_LRS \
--instance-count 0 \
--disable-overprovision \
--upgrade-policy-mode manual \
--single-placement-group false \
--platform-fault-domain-count 1 \
--load-balancer "" \
--accelerated-networking true
```

Azure Virtual Machine Ubuntu Scale Set Creation Example:

bash Azure CLI
```bash
az vmss create \
--name vmssagentspool-ubuntu \
--resource-group vmss-build-agents \
--image UbuntuLTS \
--vm-sku Standard_DS2_v2 \
--storage-sku Premium_LRS \
--authentication-type SSH \
--instance-count 0 \
--disable-overprovision \
--upgrade-policy-mode manual \
--single-placement-group false \
--platform-fault-domain-count 1 \
--load-balancer "" \
--accelerated-networking true \
--admin-username buildagent
```
