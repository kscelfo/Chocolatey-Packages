import-module AU

$details = 'https://www.microsoft.com/en-us/download/details.aspx?id=104504'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {

    $url64Pattern = '(https?|ftp):\/\/download\.microsoft\.com(:\d+)?(\/[\w\-._~:/?#[\]@!$&''()*+;%=]*)?x64\.msi'

    $details_page = Invoke-WebRequest -Uri $details

    $url64 = [regex]::Matches($details_page.Content, $url64Pattern) `
    | Select-Object -ExpandProperty Value `
    | Sort-Object `
    | Select-Object -First 1
    
    $details_page.Content -match 'Version:.*?(\d*?\.\d*?\.\d*?\.\d*)'
    $version = $Matches[1]

    @{
        URL64   = $url64       
        Version = $version
    }
}

Update-Package -ChecksumFor 64
