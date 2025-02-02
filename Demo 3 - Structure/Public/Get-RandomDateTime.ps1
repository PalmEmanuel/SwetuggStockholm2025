# Returns a random datetime within a specified range of years
function Get-RandomDateTime {
    [CmdletBinding()]
    param (
        [Parameter()]
        [DateTime]$NotBefore = (Get-Date '1970-01-01'),

        [Parameter()]
        [DateTime]$NotAfter = (Get-Date '2025-02-05')
    )

    $RandomDateTime = [LoremNET.Lorem]::DateTime($NotBefore, $NotAfter)
    
    Write-Output $RandomDateTime
}