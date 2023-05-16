param actionGroupObject object

module actionGroupModule 'modules/actionGroup.bicep' = [for actionGroup in actionGroupObject.actionGroup: {
  name: actionGroup.actionGroupname
  params: {
    actionGroupObject: actionGroup
    location: 'global'
     }
}]
