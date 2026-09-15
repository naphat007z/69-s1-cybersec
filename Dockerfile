FROM prawee/strapi

USER root
RUN cd /opt/app && yarn add @strapi/provider-email-nodemailer@4.16.2
COPY config/plugins.js /opt/app/config/plugins.js
COPY config/admin.js /opt/app/config/admin.js
RUN chown -R node:node /opt/app

USER node