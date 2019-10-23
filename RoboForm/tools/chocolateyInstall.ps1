
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.roboform.com/dist/RoboForm-v8-Setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'roboform*'

  checksum      = '69B2CA4760879693854D90B491AD72D7AB3F5F21CC9A27B662276D1BCC4E682D'
  checksumType  = 'sha256'

  silentArgs    = "/silent"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








