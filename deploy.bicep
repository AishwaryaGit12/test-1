param actionGroupObject object

module actionGroupModule 'modules/actionGroup.bicep' = [for actionGroup in actionGroupObject.actionGroup:{
  name: actionGroup.actionGroupname
  params: {
    groupShortName:actionGroupObject.groupShortName
    actionGroupObject:actionGroup
    location: 'global'
    name: actionGroupObject.name
    emailAddress: actionGroupObject.emailAddress
    actionGroupname: actionGroupObject.actionGroupname
  }
}]
