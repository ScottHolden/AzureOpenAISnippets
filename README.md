# Azure OpenAI Snippets
A set of sample resources to get started using Azure OpenAI + Azure PaaS Services

## Logic App Simple Agent
A simple logic app that accepts API input, combines it with the specified prompt, and returns a chat completion from Azure OpenAI.

[![Deploy](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FScottHolden%2FAzureOpenAISnippets%2Fmain%2FLogicAppSimpleAgent%2Fdeploy.json)

### Prerequisites:
- An Azure OpenAI resource deployed in Azure - [How to guide](https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/create-resource?pivots=web-portal#create-a-resource)
- A GPT3.5 or GPT4 Chat Completion deployment - [How to guide](https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/create-resource?pivots=web-portal#deploy-a-model)

### Required parameters
- ```AzureOpenAIEndpoint``` - The endpoint of the Azure OpenAI resource you deployed
- ```AzureOpenAIKey``` - The key to the Azure OpenAI resource you deployed
- ```AzureOpenChatDeployment``` - The chat completion deployment name (not model name) that you deployed inside the Azure OpenAI resource

## Logic App Simple Agent BYO Data
A simple logic app that accepts API input, combines it with the specified prompt and data stored within an Azure AI Search index ['bring your own data' extension](https://learn.microsoft.com/en-us/azure/ai-services/openai/reference#azure-ai-search), and returns a chat completion from Azure OpenAI.

[![Deploy](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FScottHolden%2FAzureOpenAISnippets%2Fmain%2FLogicAppSimpleAgentBYOD%2Fdeploy.json)

### Prerequisites:
- An Azure OpenAI resource deployed in Azure - [How to guide](https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/create-resource?pivots=web-portal#create-a-resource)
- A GPT3.5 or GPT4 Chat Completion deployment - [How to guide](https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/create-resource?pivots=web-portal#deploy-a-model)
- An Azure AI Search Index that contains documents - [How to guide using Azure OpenAI portal](https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/use-your-data?tabs=ai-search#ingesting-your-data)

### Required parameters
- ```AzureOpenAIEndpoint``` - The endpoint of the Azure OpenAI resource you deployed
- ```AzureOpenAIKey``` - The key to the Azure OpenAI resource you deployed
- ```AzureOpenChatDeployment``` - The chat completion deployment name (not model name) that you deployed inside the Azure OpenAI resource
- ```AzureAISearchEndpoint``` - The endpoint of the Azure AI Search resource you deployed
- ```AzureAISearchKey``` - The key to the Azure AI Search resource you deployed
- ```AzureAISearchIndexName``` - The index name inside of the Azure AI Search resource