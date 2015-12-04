$packageName = 'vidcoder' 
$installerType = 'exe' 
$url = 'https://github.com/RandomEngy/VidCoder/releases/download/v1.5.32/VidCoder-1.5.32-x86.exe' 
$url64 = 'https://github.com/RandomEngy/VidCoder/releases/download/v1.5.32/VidCoder-1.5.32-x64.exe' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes