$ErrorActionPreference = 'Stop';

$packageName = 'vidcoder'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.62/VidCoder-2.62-x86.exe' 
$url64 = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.62/VidCoder-2.62-x64.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vidcoder*'
  checksum      = '49A0E7F624241F81CFD3C85DA9150FB19B25A09A8D52BB3D3170B504BB4FC185'
  checksumType  = 'sha256'
  checksum64      = '85CFB20DFE47D4341CD29182BD60EE49277F7505B32AA0CD3721EFBF0D403238'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
