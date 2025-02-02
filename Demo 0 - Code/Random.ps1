### Run code as needed in PowerShell console

# Get random color from list of colors supported by Write-Host
$Colors = 'Green', 'Red', 'Yellow', 'Cyan', 'Blue', 'Magenta', 'DarkRed'
$RandomColor = $Colors | Get-Random
Write-Host $RandomColor -ForegroundColor $RandomColor

# Random number between 1 and 100
$RandomNumber = Get-Random -Minimum 1 -Maximum 101
Write-Host $RandomNumber

# Random date after 1970
$RandomYear = Get-Random -Minimum 1970 -Maximum 2025
$RandomMonth = Get-Random -Minimum 1 -Maximum 13
$RandomDay = Get-Random -Minimum 1 -Maximum 29
$RandomDate = Get-Date -Year $RandomYear -Month $RandomMonth -Day $RandomDay
Write-Host $RandomDate

# Random file name
$RandomFileName = [System.IO.Path]::GetRandomFileName()

# Random GUID
$RandomGuid = (New-Guid).ToString()