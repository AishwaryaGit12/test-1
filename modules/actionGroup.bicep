param actionGroupname string
param name string
param actionGroupObject object
param location string
param emailAddress string
param groupShortName string

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = {
  name: actionGroupname
  location: location
  properties: {
    enabled: actionGroupObject.enabled
    groupShortName:groupShortName
    emailReceivers: [
      {
        name: name
        emailAddress: emailAddress
        useCommonAlertSchema: true
      }
    ]
  }
}
