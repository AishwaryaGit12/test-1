@description('Action Group Parama')
param emailReceivers array
param actionGroupObject object
param tags object
param location string

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = {
  name: actionGroupObject.actionGroupname
  location: location
  tags:tags
  properties: {
    enabled: actionGroupObject.enabled
    groupShortName:actionGroupObject.groupShortName
    emailReceivers: emailReceivers
  }
}
