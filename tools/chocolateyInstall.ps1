$ErrorActionPreference = 'Stop';

$packageName = 'vidcoder'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.50/VidCoder-2.50-x86.exe' 
$url64 = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.50/VidCoder-2.50-x64.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vidcoder*'
  checksum      = '07D4C13B8A4ACFD445136125C905E62288F42AF8EE59FB000DB460A0891926EA'
  checksumType  = 'sha256'
  checksum64      = 'CE33849F0CEF9E3214098D811974B0763B604C3E999969E9A1A8029F29EEF778'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
