# src
for exam 10.20.2026

docker compose up
 - build les images si elles n’existent pas et démarre tous les services définis dans des conteneurs.

docker run --rm -v "${PWD}:/spec" redocly/cli lint src/openAPI.yaml
  - installation et execution de redocly/cli

docker run -it --rm -p 80:80 \-e SPEC_URL='http://localhost:8000/swagger.yaml' redocly/redoc
  - docly vers le port 80
  
