@description('The location all resources will be deployed to')
param location string = resourceGroup().location

@description('A prefix to add to the start of all resource names. Note: A "unique" suffix will also be added')
param prefix string = 'simpleagentbyod'

@description('The Azure OpenAI Endpoint to use')
param AzureOpenAIEndpoint string

@secure()
@description('The key for the Azure OpenAI Endpoint specified')
param AzureOpenAIKey string

@description('The name of the GPT3.5/3.5-turbo/4 deployment within the Azure OpenAI Endpoint specified')
param AzureOpenChatDeployment string

@description('The Azure AI Search Endpoint to use')
param AzureAISearchEndpoint string

@secure()
@description('The key for the Azure AI Search Endpoint specified')
param AzureAISearchKey string

@description('The name of the Azure AI Search Index to use')
param AzureAISearchIndexName string

var workflowDefinition = loadJsonContent('workflow.json').definition

resource logicapp 'Microsoft.Logic/workflows@2019-05-01' = {
  name: '${prefix}-logicapp'
  location: location
  properties: {
    definition: workflowDefinition
    parameters: {
      openAIEndpoint: {
        value: AzureOpenAIEndpoint
      }
      openAIKey: {
        value: AzureOpenAIKey
      }
      openAIChatDeployment: {
        value: AzureOpenChatDeployment
      }
      aiSearchEndpoint: {
        value: AzureAISearchEndpoint
      }
      aiSearchKey: {
        value: AzureAISearchKey
      }
      aiSearchIndexName: {
        value: AzureAISearchIndexName
      }
      '$connections': {
        value: {}
      }
    }
  }
}
