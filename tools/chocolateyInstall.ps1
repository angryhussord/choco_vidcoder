$ErrorActionPreference = 'Stop';

$packageName = 'vidcoder'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.58/VidCoder-2.58-x86.exe' 
$url64 = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.58/VidCoder-2.58-x64.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vidcoder*'
  checksum      = '653056928A5231C488A5F9F07D4BACC331B8B389731090F1CF3664145F3DAE56'
  checksumType  = 'sha256'
  checksum64      = '71CF321FFD4D8E610A9D9524143030E1ED36851FC361311F6B449F75EF306F52'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
