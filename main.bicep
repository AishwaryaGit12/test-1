param name string
param emailAddressName string
param location string
param emailAddress string
param groupShortName string

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = {
  name: name
  location: 'global'
  properties: {
    groupShortName:groupShortName
    emailReceivers: [
      {
        name: emailAddressName
        emailAddress: emailAddress
        useCommonAlertSchema: true
      }
    ]
  }
}
