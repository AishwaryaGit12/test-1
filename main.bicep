param actionGroupName string
param WebHookName string
param serviceUri string
param objectId string
param groupShortName string
var location = 'global'

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = {
  name: actionGroupName
  location : location
  properties: {
    groupShortName:groupShortName
    webhookReceivers: [
      {
        identifierUri: identifierUri
        name: WebHookName
        serviceUri: serviceUri
        tenantId: tenantId
        objectId: objectId
        useAadAuth: true
        useCommonAlertSchema: true
      }
    ]
    enabled : true
  }
}
