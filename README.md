Para arrancar este proyecto en un contenedor (docker):
- docker build -t hellogradle:latest .
- docker run -it --rm -p 8080:8080 hellogradle:latest

También se puede utilizar docker compose:
- docker build -t --rm hellogradle:latest .
- docker-compose up