var location = 'global'
param rgArray array

resource actionGroup 'Microsoft.Insights/actionGroups@2021-09-01' = [for (rg, i) in rgArray: { 
  name: rg.actionGroupName
  location : location
  properties: {
    groupShortName:rg.groupShortName
    emailReceivers: [
      {
        name: rg.emailAddressName
        emailAddress: rg.emailAddress
        useCommonAlertSchema: true
      }
    ]
    enabled : true
  }
}
]
