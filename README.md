# BuildToolsInstall

Azure CLI VM Scale Set CustomScriptExtension Command:

bash
```bash
az vmss extension set \
--publisher Microsoft.Compute \
--name CustomScriptExtension \
--vmss-name <vmssagent resource> \
--resource-group <vmssagents resource group> \
--settings '{ "FileUris":["https://raw.githubusercontent.com/TCROC/BuildToolsInstall/master/Windows/InstallTools.ps1"], "commandToExecute": "Powershell.exe -ExecutionPolicy Unrestricted -File InstallTools.ps1" }'
```

Azure Virtual Machine Scale Set Creation Example:

bash Azure CLI
```
az vmss create \
--name <resource name> \
--resource-group <resource group> \
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
