# Writes a random color message to the console
function Write-RandomColorMessage {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Message
    )

    # Get the random color and create a string with an ANSI color escape sequence
    # The string will be interpreted as color by the console 
    $RandomColor = Get-RandomColor -Hex
	$AnsiString = $PSStyle.Foreground.FromRgb($RandomColor)

    # Write the message to the console and reset the color afterwards
    Write-Output ($AnsiString + $Message + $PSStyle.Reset)
}