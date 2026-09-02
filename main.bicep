param location string = 'centralindia'
param projectName string

module webDeployment 'resource.bicep' = {
  name: 'contoso-web'
  params: {
    appName: projectName
    location: location
  }
}
