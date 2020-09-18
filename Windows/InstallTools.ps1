Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString("https://chocolatey.org/install.ps1"));
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User");
choco install -y -f git.install --params "/GitAndUnixToolsOnPath";
choco install -y -f powershell-core;
choco install -y -f 7zip.install;
