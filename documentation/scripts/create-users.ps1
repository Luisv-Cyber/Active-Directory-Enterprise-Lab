# Example PowerShell script for bulk user creation

Import-Module ActiveDirectory

for ($i=1; $i -le 10; $i++) {

New-ADUser `
-Name "ITUser$i" `
-GivenName "ITUser$i" `
-Surname "LabUser" `
-SamAccountName "ITUser$i" `
-UserPrincipalName "ITUser$i@company.local" `
-Path "OU=IT,OU=Users,DC=company,DC=local" `
-AccountPassword (ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force) `
-Enabled $true

}
