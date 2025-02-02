# Returns a random color from a predefined set of colors
function Get-RandomColor {
    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateSet('Green', 'Red', 'Yellow', 'Cyan', 'Blue', 'Magenta', 'DarkRed')]
        [string[]]$Colors = @('Green', 'Red', 'Yellow', 'Cyan', 'Blue', 'Magenta', 'DarkRed')
    )
    
    $RandomColor = $Colors | Get-Random
    Write-Host $RandomColor -ForegroundColor $RandomColor
    
    return $RandomColor
}

# Returns a random date within a specified range of years
function Get-RandomDate {
    [CmdletBinding()]
    param (
        [Parameter()]
        [int]$StartYear = 1970,
        [Parameter()]
        [int]$EndYear = 2025
    )

    # Only supports 28 days cause of the tricky current month called February
    # Must be fixed by March!
    $RandomYear = Get-Random -Minimum $StartYear -Maximum $EndYear
    $RandomMonth = Get-Random -Minimum 1 -Maximum 13
    $RandomDay = Get-Random -Minimum 1 -Maximum 29
    $RandomDate = Get-Date -Year $RandomYear -Month $RandomMonth -Day $RandomDay
    
    return $RandomDate
}

# Returns a random file name
function Get-RandomFileName {
    [CmdletBinding()]
    param (
        [switch]$TempPath
    )

    $RandomFileName = $TempPath.IsPresent ? [System.IO.Path]::GetTempFileName() : [System.IO.Path]::GetRandomFileName()
    
    return $RandomFileName
}