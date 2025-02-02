# Returns a random hex value
function Get-RandomHex {
    [CmdletBinding()]
    param (
        [Parameter()]
        [int]$Length = 6
    )

    $RandomHex = [LoremNET.Lorem]::HexNumber($Length)
    
    return $RandomHex
}