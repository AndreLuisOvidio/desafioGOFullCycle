# Desafio docker image com menos de 2 megas

## **Objetivo**
Criar uma imagem com um binario go que ao executar escreva o texto "Code.education Rocks!", e tenha menos de 2 megas

## **Dockerfile**
Para fazer isso precisei utilizar para buildar o binario go, o tinygo, utilizando somente o go normal o proprio binario go ficou com mais de 2 megas

Para a imagem final foi utilizado o alpine 3.5 e apaguei toda a pasta lib para tentar deixar a imagem menor que 2 megas

## **Disponibilizei a imagem no docker hub:**

https://hub.docker.com/r/andreovidio/desafio-go-fullcycle