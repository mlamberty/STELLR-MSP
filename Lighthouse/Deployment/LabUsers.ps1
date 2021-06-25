###
### These are vairable you need to update to reflect your environment
###

##$Admin = "Amatthewl@synnex.com"
##$AdminPassword = "P@$$w0rd1!"
$Directory = "migratelab.onmicrosoft.com"
$NewUserPassword = "demo!pass123"
$CsvFilePath = "C:\Users\mattl\Downloads\Scripts\MigrateLabUsers.csv"


###
### Create a PowerShell connection to my directory. If you do not want to specify the password in the script, you can simply replace this with "Connect-AzureAD", which will prompt for a username and password.
###

$SecPass = ConvertTo-SecureString $AdminPassword -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential ($Admin, $SecPass)
Connect-AzureAD -TenantId 8b831844-bb7a-46e6-be22-638b3fb84fa6 

###
### Create a new Password Profile for the new users. We'll be using the same password for all new users in this example
###

$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = $NewUserPassword

###
### Import the csv file. You will need to specify the path and file name of the CSV file in this cmdlet
###

$NewUsers = import-csv -Path $CsvFilePath

###
### Loop through all new users in the file. We'll use the ForEach cmdlet for this.
###

Foreach ($NewUser in $NewUsers) { 

###
### Construct the UserPrincipalName, the MailNickName and the DisplayName from the input data in the file 
###

    $UPN = $NewUser.LastName + "@" + $Directory
    $DisplayName = $NewUser.Firstname + " " + $NewUser.Lastname

###
### Now that we have all the necessary data for to create the new user, we can execute the New-AzureADUser cmdlet  
###

    New-AzureADUser -UserPrincipalName $UPN -AccountEnabled $true -DisplayName $DisplayName -GivenName $NewUser.FirstName  -Surname $NewUser.LastName -PasswordProfile $PasswordProfile

###
### End the Foreach loop
###
    }
    ##$NewUser = @(Get-AzureADUser $UPN)
    ##$UserId = @( $NewUser.Id)
    ##Add-AzureADGroupMember -ObjectId 14efe484-2d96-4992-b65a-334fe91b385e -RefObjectId $UserId