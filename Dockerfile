
FROM node:alpine AS builder
WORKDIR /app
RUN npm install -g @redocly/cli
COPY src/openAPI.yaml ./openAPI.yaml
RUN redocly build-docs openAPI.yaml -o index.html
FROM nginx:alpine
COPY --from=builder /app/index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
