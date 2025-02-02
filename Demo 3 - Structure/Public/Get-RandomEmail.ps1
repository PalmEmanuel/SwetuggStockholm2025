# Returns a random email address
function Get-RandomEmail {
    [CmdletBinding()]
    param ()

    return [LoremNET.Lorem]::Email()
}