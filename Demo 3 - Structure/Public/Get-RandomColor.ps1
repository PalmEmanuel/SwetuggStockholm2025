# Returns a random color from a predefined set of colors
function Get-RandomColor {
    [CmdletBinding()]
    param (
        [Parameter(ParameterSetName = 'Color')]
        [ValidateSet('Green', 'Red', 'Yellow', 'Cyan', 'Blue', 'Magenta', 'DarkRed')]
        [string[]]$Colors = @('Green', 'Red', 'Yellow', 'Cyan', 'Blue', 'Magenta', 'DarkRed'),

        [Parameter(Mandatory, ParameterSetName = 'Hex')]
        [switch]$Hex
    )
    
    if ($Hex.IsPresent) {
        $RandomColor = '#' + (Get-RandomHex -Length 6)
    } else {
        $RandomColor = $Colors | Get-Random
    }
    
    return $RandomColor
}