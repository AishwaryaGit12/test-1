param actionGroupName string
param WebHookName string
param serviceUri string
param groupShortName string
var location = 'global'

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = {
  name: actionGroupName
  location : location
  properties: {
    groupShortName:groupShortName
    webhookReceivers: [
      {
        name: WebHookName
        serviceUri: serviceUri
        useCommonAlertSchema: true
      }
    ]
    enabled : true
  }
}
