$ErrorActionPreference = 'Stop';

$packageName = 'vidcoder'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.51/VidCoder-2.51-x86.exe' 
$url64 = 'https://github.com/RandomEngy/VidCoder/releases/download/v2.51/VidCoder-2.51-x64.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vidcoder*'
  checksum      = 'E2E85A5C6465E0A7D542F03F4D929BCD3F8F150D16897EA7AAADE82F5AB708BA'
  checksumType  = 'sha256'
  checksum64      = 'D72E92C619019D66BCFFAF9D2329FB96790CEB39008F73070CAA31B508DDB96D'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
