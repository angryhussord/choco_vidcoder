$ErrorActionPreference = 'Stop';

$packageName = 'vidcoder'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.47/VidCoder-2.47-x86.exe' 
$url64 = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.47/VidCoder-2.47-x64.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vidcoder*'
  checksum      = '9B725026697A8C3604F7A597DDF4CF38'
  checksumType  = 'sha256'
  checksum64      = 'BB9034B6C616D717507F9BAD5173C784'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
