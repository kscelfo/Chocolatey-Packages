
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.roboform.com/dist/RoboForm-v8-Setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'roboform*'

  checksum      = 'B69896D7AFCC028EB38A09AB30579E5F9E06C121246A3BB4CC7C18A50E7BF3DD'
  checksumType  = 'sha256'

  silentArgs    = "/silent"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








