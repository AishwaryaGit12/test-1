param actionGroupname string
param name string
param actionGroupObject object
param location string

@description('Unique email address.')
param emailAddress string

@description('Short name up to 12 characters for the Action group.')
param groupShortName string

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = {
  name: actionGroupname
  location: location
  properties: {
    enabled: actionGroupObject.enabled
    groupShortName:groupShortName
    emailReceivers:{
     allOf: actionGroupObject.emailReceivers
      }
  }
}
