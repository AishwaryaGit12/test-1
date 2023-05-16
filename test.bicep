param actionGroupName string
param emailAddressname string
param emailAddress string
param groupShortName string
var location = 'global'

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = {
  name: actionGroupName
  location : location
  properties: {
    groupShortName:groupShortName
    emailReceivers: [
      {
        name: emailAddressname
        emailAddress: emailAddress
        useCommonAlertSchema: true
      }
    ]
    enabled : true
  }
}
