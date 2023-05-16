@description('Action Group Parama')
param emailReceivers array
param actionGroupname string
param groupShortName string
param actionGroupObject object
param location string

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = {
  name: actionGroupname
  location: location
  properties: {
    enabled: actionGroupObject.enabled
    groupShortName:groupShortName
    emailReceivers: emailReceivers
  }
}
