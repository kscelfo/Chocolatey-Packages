$packageName = 'RoboForm'
$installerType = 'EXE'
$url = 'https://www.roboform.com/dist/RoboForm-v8-Setup.exe'
$silentArgs = '/silent'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes