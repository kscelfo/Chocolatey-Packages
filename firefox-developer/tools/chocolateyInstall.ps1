$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'firefox-developer'
  fileType               = 'msi'
  url                    = 'https://download.mozilla.org/?product=firefox-devedition-msi-latest-ssl&amp;os=win&amp;lang=en-US'  
  checksum               = '6267e743a5188dd51a71f94e80f83d08fb416e468274c5ad473d04272339a795'
  checksumType           = 'sha256'
  url64bit               = 'https://download.mozilla.org/?product=firefox-devedition-msi-latest-ssl&amp;os=win64&amp;lang=en-US'  
  checksum64             = '3635f0a3832e24a3c62a30fb0de5cacf8cc426f479f0ae39688ad50580fe3b7f'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'firefox-developer'
}
Install-ChocolateyPackage @packageArgs
