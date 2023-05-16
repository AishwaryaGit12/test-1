param actionGroupObject object

module actionGroupModule '../../modules/Microsoft.Insights/actionGroup.bicep' = [for actionGroup in actionGroupObject.actionGroup: {
  name: actionGroup.actionGroupname
  params: {
    actionGroupObject: actionGroup
    location: 'global'
    emailReceivers: actionGroupObject.emailReceivers
    }
}]
