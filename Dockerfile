FROM deepak7093/nvm

# List of ENVIRONMENT VARIABLES
ENV WORKDIR /var/www/app
ENV PORT 3000
# Build Steps
VOLUME /var/www/app
WORKDIR $WORKDIR
COPY . .
RUN npm install
EXPOSE $PORT
CMD [ "node", "index.js" ]
