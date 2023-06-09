FROM node:14-slim

LABEL version="1.1.0"
LABEL repository="https://github.com/OluwaferanmiLove/codepush-action"
LABEL homepage="https://github.com/OluwaferanmiLove/codepush-action"
LABEL maintainer="Babalola Oluwaferanmi Love <babalolaferanmi8@gmail.com>"

LABEL com.github.actions.name="GitHub Action for Codepush - Node v Fix"
LABEL com.github.actions.description="Wraps the appcenter CLI to enable common commands - node version fix."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

RUN npm install -g appcenter-cli

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
