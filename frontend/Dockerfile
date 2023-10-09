# Dockerfile frontend
# build environment
FROM node:16.14 as builder
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
ARG VITE_BACKEND_URL=${VITE_BACKEND_URL}
ENV VITE_BACKEND_URL=${VITE_BACKEND_URL}
ARG VITE_SPOTIFY_ID=${VITE_SPOTIFY_ID}
ENV VITE_SPOTIFY_ID=${VITE_SPOTIFY_ID}
ARG VITE_SPOTIFY_SECRET=${VITE_SPOTIFY_SECRET}
ENV VITE_SPOTIFY_SECRET=${VITE_SPOTIFY_SECRET}

COPY ./frontend /usr/src/app
RUN npm install
RUN npm run build

# production environment
FROM nginx:1.15
COPY --from=builder /usr/src/app/dist /usr/share/nginx/html
COPY ./frontend/default.conf /etc/nginx/conf.d/
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]