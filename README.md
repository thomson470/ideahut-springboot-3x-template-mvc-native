# Spring Boot 3x Template (Native WebMvc) <img height="32" src="https://avatars.githubusercontent.com/u/317776?s=48&v=4" alt="Spring"> <img height="32" src="https://avatars.githubusercontent.com/u/146613481?v=4" alt="Ideahut">

- Template implementasi dari Ideahut Springboot 3x Library (Native WebMvc).
- Dokumentasi dapat dilihat di [Ideahut Springboot](https://github.com/ideahut-apps-team/ideahut-springboot-docs/)

|          |           |
|:---------|:----------|
|Web Server|Tomcat     |
|Database  |MySQL      |
|Hibernate |6.4.1.Final|
|Spring    |6.1.3      |
|Springboot|3.2.2      |
|Ideahut   |3.2.2-3.2.1|

## [Docker](https://www.docker.com/) <img height="32" src="https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/97_Docker_logo_logos-1024.png" alt="">


### [Alpine](https://hub.docker.com/_/alpine) <img height="32" src="https://djeqr6to3dedg.cloudfront.net/repo-logos/library/alpine/live/logo-1720462146426.png" alt="">
##### Build
```bash
docker build --no-cache -t ideahut-springboot-3x-template-mvc-alpine . -f Dockerfile-alpine
```
##### Run
```bash
docker run -d \
--name ideahut-springboot-3x-template-mvc-alpine \
-v <lokasi application.yml>:/apps/application.yml \
-v <lokasi extras>:/apps/extras/ \
-v <lokasi logs>:/apps/logs/ \
-p 5402:5402 \
ideahut-springboot-3x-template-mvc-alpine
```

### [Alpaquita](https://bell-sw.com/alpaquita-linux/) <img height="32" src="https://19558085.fs1.hubspotusercontent-na1.net/hub/19558085/hubfs/1665064026841.jpeg" alt="">
##### Build
```bash
docker build --no-cache -t ideahut-springboot-3x-template-mvc-alpaquita . -f Dockerfile-alpaquita
```
##### Run
```bash
docker run -d \
--name ideahut-springboot-3x-template-mvc-alpaquita \
-v <lokasi application.yml>:/apps/application.yml \
-v <lokasi extras>:/apps/extras/ \
-v <lokasi logs>:/apps/logs/ \
-p 5402:5402 \
ideahut-springboot-3x-template-mvc-alpaquita
```

### [Centos](https://www.centos.org/) <img height="32" src="https://seeklogo.com/images/C/centos-logo-494F57D973-seeklogo.com.png" alt="">
##### Build
```bash
docker build --no-cache -t ideahut-springboot-3x-template-centos . -f Dockerfile-centos
```
##### Run
```bash
docker run -d \
--name ideahut-springboot-3x-template-centos \
-v <lokasi application.yml>:/apps/application.yml \
-v <lokasi extras>:/apps/extras/ \
-v <lokasi logs>:/apps/logs/ \
-p 5402:5402 \
ideahut-springboot-3x-template-centos
```

## Admin
- `URL`  : http://localhost:5402/_/web
- `User` : admin
- `Pass` : password
<div align="left">
   <img src="./screenshot.jpg" alt="Admin" title="Admin" width="800" />
</div>

##

### [Index](https://github.com/thomson470/Ideahut-Template)
