$packageName = 'vidcoder' 
$installerType = 'exe' 
$url = 'https://vidcoder.codeplex.com/downloads/get/1381494' 
$url64 = 'https://vidcoder.codeplex.com/downloads/get/1381492' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes