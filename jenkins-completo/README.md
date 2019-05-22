Levantar todo el ambiente:
`docker-compose up -d`

* Jenkins en: `localhost:8080`
* Artifactory en: `localhost:8081`
* SonarQube en: `localhost:9000`

Es necesario ver el log de Jenkins para obtener la clave de inicio y poder iniciar jenkins correctamente: `docker-compose logs jenkins`

Cuando los servicios terminen de subir, se debe configurar en Jenkins:
* Plugin de Artifactory
* Plugin de SonarQube
* Plugin de Global Library (Para relacionar el template)
* Instalar Maven, Gradle, Nodejs, Git
