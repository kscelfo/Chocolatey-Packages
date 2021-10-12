import-module au

$releases = 'https://www.mozilla.org/en-US/firefox/developer/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url32   = $download_page.links | ? href -match 'msi.*os=win&' | % href | select -First 1
    $url64   = $download_page.links | ? href -match 'msi.*os=win64&' | % href | select -First 1
    $releaseNotesUrl = $download_page.links | ? href -match 'releasenotes' | % href | select -First 1

    $releaseNotesUrl -match '(\d*\.\d*)'
    $version = $Matches[1]

    $url32
    $url64
    $version


    @{
        URL32   = $url32 
        URL64   = $url64       
        Version = $version
    }
}

update
