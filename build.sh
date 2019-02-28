ACR_NAME=
GIT_USER=
GIT_PAT=

az acr task create \
    --registry $ACR_NAME \
    --name webapplication \
    --image webapplication:{{.Run.ID}} \
    --context https://github.com/$GIT_USER/AspNetCoreOnWindowsContainer.git \
    --branch master \
    --file WebApplication/Dockerfile \
    --git-access-token $GIT_PAT