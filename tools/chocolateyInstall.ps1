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
  checksum      = 'D7615BE55B8459526AAC295C4A95ECB5'
  checksumType  = 'sha256'
  checksum64      = 'F71644763B5A960D12CAC5913EB41552'
  checksumType64  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
