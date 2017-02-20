$ErrorActionPreference = 'Stop';

$packageName = 'vidcoder'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.49/VidCoder-2.49-x86.exe' 
$url64 = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.49/VidCoder-2.49-x64.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vidcoder*'
  checksum      = 'FD155D708F4EEA5DAE292E37B4511AD9'
  checksumType  = 'sha256'
  checksum64      = '79AFCDD032FB00C5BA2BE6D838A3905C'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
