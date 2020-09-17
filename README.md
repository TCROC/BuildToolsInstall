# BuildToolsInstall

Example Azure Windows Custom Extension:

```bash
az vmss extension set \
--vmss-name vmssagentspool \
--resource-group vmssagents \
--name CustomScriptExtension \
--publisher Microsoft.Compute \
--settings '{ "FileUris": [ "https://github.com/TCROC/BuildToolsInstall/blob/master/Windows/InstallTools.ps1" ], "commandToExecute": "Powershell.exe -ExecutionPolicy Unrestricted -File InstallTools.ps1" }'
```
