Import-Module Az.Resources
function New-ResourceGroup {
    [cmdletbinding()]

    param (
        [parameter(Mandatory)]
        [string]$rgName,

        [parameter(Mandatory)]
        [string]$location
    )

    $params = @{
        'Name' = $rgName
        'Location' = $location
    }

    New-AzResourceGroup @params
}

function New-Tag {
    [cmdletbinding()]

    param (
        [parameter(Mandatory)]
        [string]$tagName,

        [paramter(Mandatory)]
        [string]$tagValue
    )

    $params = @{
        'Name' = $tagName
        'Value' = $tagValue
    }

    New-AzTag @params
}