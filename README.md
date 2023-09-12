<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

# Ejecutar en desarrollo
1. Clonar el repositorio del proyecto
2. Ejecutar
```
npm install
```
3. Tener NEST CLI instalado
```
npm i -g @nestjs/cli
```
4. Levantar la base de datos
```
docker-compose up -d

5.Clonar el archivo ___.env template___ renombrar la copia a a __.env___

6. Llenar las bases de enterno definidas en el ```.env```

7. Ejeecutar la aplicacion en dev: 
```
nest start --watch
```

5. Reconstruir la base de datos con la semilla
```
http://localhost:3000/api/v2/seed
```

#Stack usado
*MongoDb
*Nest

# Production Build
1. Crear el archivo ```.env.prod```
2. Llenar las variables de entorno de produccion 
3. Crear la nueva imagen 
```
docker-compose -f docker-compose.prod.yaml --env-file .env.prod up --build
```


