ACR_NAME=dotnetcoretests
GIT_USER=bradygaster
GIT_PAT=b7df0f89c0f80b69378b1e163892c6c2b8f6a759

az acr task create \
    --registry $ACR_NAME \
    --name webapplication \
    --image webapplication:{{.Run.ID}} \
    --context https://github.com/$GIT_USER/AspNetCoreOnWindowsContainer.git \
    --branch master \
    --file Dockerfile \
    --git-access-token $GIT_PAT