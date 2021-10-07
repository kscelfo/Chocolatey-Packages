import-module au

$releases = 'https://www.microsoft.com/en-us/download/confirmation.aspx?id=30169'
$details = 'https://www.microsoft.com/en-us/download/details.aspx?id=30169'

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
    $download_page = Invoke-WebRequest -Uri $releases
    $details_page = Invoke-WebRequest -Uri $details

    $url32 = $download_page.links | ? href -match 'x86.msi$' | % href | select -First 1
    $url64 = $download_page.links | ? href -match 'x64.msi$' | % href | select -First 1
    $details_page.Content -match 'Version:.*?(\d*?\.\d*?\.\d*?\.\d*)'
    $version = $Matches[1]

    @{
        URL32   = $url32 
        URL64   = $url64       
        Version = $version
    }
}

update
