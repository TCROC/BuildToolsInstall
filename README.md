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
