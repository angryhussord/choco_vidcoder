$ErrorActionPreference = 'Stop';

$packageName = 'vidcoder'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.57/VidCoder-2.57-x86.exe' 
$url64 = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.57/VidCoder-2.57-x64.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vidcoder*'
  checksum      = '2379033EA1736CA7B166F49D75B0EB159D708692D1E9DB744AD364A104F33C0E'
  checksumType  = 'sha256'
  checksum64      = 'DEBEEA49CBF1C0F152255E58CCC948E7FDE1438FF5321423E7AA33362EDD0652'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
