# BuildToolsInstall

Azure CLI VM Scale Set CustomScriptExtensions:

bash
```bash
az vmss extension set \
--publisher Microsoft.Compute \
--name CustomScriptExtension \
--vmss-name vmssagentspool \
--resource-group vmssagents \
--settings '{ "FileUris":["https://raw.githubusercontent.com/TCROC/BuildToolsInstall/master/Windows/InstallTools.ps1"], "commandToExecute": "Powershell.exe -ExecutionPolicy Unrestricted -File InstallTools.ps1" }'
```