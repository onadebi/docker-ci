# use a base node image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "onaefe@onadebi.com"

# set a health check
HEALTHCHECK --interval=5s --timeout=5s --start-period=5s --retries=3 CMD [ "curl -f http://127.0.0.1:8000 || exit 1" ]

# tell docker waht port to expose
EXPOSE 8000
