param location string = 'centralindia'
param appName string

// Creates the server hosting plan
resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: '${appName}-plan'
  location: location
  sku: {
    name: 'F1' // Free tier
  }
}

// Creates the actual web application
resource webApp 'Microsoft.Web/sites@2022-09-01' = {
  name: '${appName}-site'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}
