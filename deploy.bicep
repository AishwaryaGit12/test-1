param actionGroupObject object

module actionGroupModule 'modules/actionGroup.bicep' = [for actionGroup in actionGroupObject.actionGroup:{
  name: actionGroup.actionGroupname
  params: {
    groupShortName:actionGroup.groupShortName
    actionGroupObject:actionGroup
    location: 'global'
    name: actionGroup.name
    emailAddress: actionGroup.emailAddress
    actionGroupname: actionGroup.actionGroupname
  }
}]
