# List existing resource groups
az group list -o table

# Create new resource group
az group create --location eastus --name ignitethetour

# Create an Azure App Service Plan
az appservice plan create --name ignitethetourPlan --resource-group ignitethetour --sku FREE

# Create Web App
az webapp create --resource-group ignitethetour --plan ignitethetourPlan --name ignitethetourdc

# Set the node runtime
az webapp config appsettings set --resource-group ignitethetour --name ignitethetourdc --settings WEBSITE_NODE_DEFAULT_VERSION=10.10

# Navigate to app
az webapp browse -g ignitethetour -n ignitethetourdc