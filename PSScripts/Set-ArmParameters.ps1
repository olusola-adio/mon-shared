[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [string]$Environment
)

$ApimExists = $null -ne (Get-AzureRmApiManagement -ResourceGroupName "mon-$Environment-shared-rg" -Name "mon-$Environment-shared-apim" -ErrorAction Ignore)
Write-Verbose "Writing value $ApimExists to variable apimExists"
Write-Output "##vso[task.setvariable variable=apimExists]$($ApimExists.ToString().ToLower())"