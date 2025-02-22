import-module AU

$releases = 'https://www.roboform.com/download'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $url32Pattern = '(https?|ftp):\/\/www\.roboform\.com(:\d+)?(\/[\w\-._~:/?#[\]@!$&''()*+;%=]*)?\.msi'

    $download_page = Invoke-WebRequest -Uri $releases

    $url32 = [regex]::Matches($download_page.Content, $url32Pattern) `
    | Select-Object -ExpandProperty Value `
    | Sort-Object `
    | Select-Object -First 1

    $download_page.Content -match 'Roboform for Windows\sv(\d*?\.\d*?\.\d*)'
    $version = $Matches[1]

    @{
        URL32   = $url32        
        Version = $version
    }
}

Update-Package -ChecksumFor 32
