FROM node:14 AS backend
WORKDIR /usr/src/backend
COPY Techdome-backend/package*.json ./
RUN npm install
COPY Techdome-backend/ .
Expose 5000
CMD ["npm", "start"]

FROM node:14 AS frontend
WORKDIR /usr/src/frontend
COPY Techdome-frontend/package*.json ./
RUN npm install
COPY Techdome-frontend/ .
Expose 3000
CMD ["npm", "start"]
