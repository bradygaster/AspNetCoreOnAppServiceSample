ACR_NAME=dotnetcoretests
GIT_USER=bradygaster
GIT_PAT=8f2d3c70eb9814b405aba515b5f821ec6f785678

az acr task create \
    --registry $ACR_NAME \
    --name webapplication \
    --image webapplication:{{.Run.ID}} \
    --context https://github.com/$GIT_USER/AspNetCoreOnWindowsContainer.git \
    --branch master \
    --file Dockerfile \
    --git-access-token $GIT_PAT