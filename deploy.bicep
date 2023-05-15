param actionGroupObject object

module actionGroupModule 'modules/actionGroup.bicep' = [for actionGroup in actionGroupObject.actionGroup:{
  name: actionGroup.actionGroupname
  params: {
    groupShortName:actionGroupObject.groupShortName
    actionGroupObject:actionGroup
    location: 'global'
    emailReceivers : actionGroup.emailReceivers
    actionGroupname: actionGroup.actionGroupname
  }
}]
