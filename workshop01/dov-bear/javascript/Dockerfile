FROM node:19

WORKDIR /app

#for files put . behind
COPY main.js .
COPY package.json .
COPY package-lock.json .

#for folders/directories put the whole name inside
COPY public public
COPY views views

#install the node packages
#npm ci, looks at the package-lock.json (use during depl)
#npm i, looks at the package.json (use during develpoment)
#option 1: used when we have shell
RUN npm ci 
# option2: RUN ['npm','ci'] run this in containers when there is no shell, u need to explicitly state the path of the npm program to run this

## RUN
# need to let the application know which port to open
# define the env here
# ENV API_KEY=placeholder
ENV PORT=3001

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD curl localhost:#{PORT}/healthz || exit 1

EXPOSE ${PORT}

#two versions of this as well, but run through the shell with the command below
ENTRYPOINT node main

#IMPT: Javascript uses node base image, using npm to install app dependencies via package.json

