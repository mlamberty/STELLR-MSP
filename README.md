# STELLR-MSP
## Managed Services

### "Lighthouse Onboarding"

Resource Group management

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmlamberty%2FSTELLR-MSP%2Fmain%2FLighthouse%2FDeployment%2Fazuredeploy.json" target= "_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.png"/>
</a>

Enter any resource groups related to your Virtual Desktop environment in format:
[{"rgName":"<Your RG Name>"},{"rgName":<Your RG Name>"}]

Subscription wide Management

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FStellrMSP%2FSTELLR-MSP%2Fmain%2FLighthouse%2FDeployment%2FazureSubdeploy.json" target= "_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.png"/>
</a>

Gives Stellr Admins Contributor access to entire Subscription

Log Analytics Workspace

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmlamberty%2FLighthouse-MSP%2Fmain%2FWorkspace%2Fworkspaceconfig.json" target= "_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.png"/>
</a>

Create Log Analytics Workspace with All WVD datasources
