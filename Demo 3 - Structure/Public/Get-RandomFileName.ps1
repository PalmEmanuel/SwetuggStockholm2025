# Returns a random file name
function Get-RandomFileName {
    [CmdletBinding()]
    param (
        [switch]$TempPath
    )

    $RandomFileName = $TempPath.IsPresent ? [System.IO.Path]::GetTempFileName() : [System.IO.Path]::GetRandomFileName()
    
    return $RandomFileName
}