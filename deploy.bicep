param actionGroupObject object

module actionGroupModule 'modules/actionGroup.bicep' = [for actionGroup in actionGroupObject.actionGroup:{
  name: actionGroup.actionGroupname
  params: {
    groupShortName:actionGroupObject.groupShortName
    actionGroupObject:actionGroup
    location: 'global'
    emailAddressName: actionGroupObject.emailAddressName
    emailAddress: actionGroupObject.emailAddress
    actionGroupname: actionGroup.actionGroupname
  }
}]
