$ErrorActionPreference = 'Stop';

$packageName = 'vidcoder'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.56/VidCoder-2.56-x86.exe' 
$url64 = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.56/VidCoder-2.56-x64.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vidcoder*'
  checksum      = 'E22CFFD28CCAB5AF6CD7FE4B1423B36265A7AFCE7BA1E8333E3EC2F50116941A'
  checksumType  = 'sha256'
  checksum64      = 'EA2412A6BB23A2A825FA85539E0802D92B823B22AB484B03C93D3620C7DBF1E0'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
