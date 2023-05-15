param actionGroupName string
param emailAddressName string
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
        Name: emailAddressName
        emailAddress: emailAddress
        useCommonAlertSchema: true
      }
    ]
    enabled : true
  }
}
