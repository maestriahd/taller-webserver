# Taller Web Server

## Qué es un servidor

Un servidor web es un programa (software) y/o un equipo (hardware) que permite alojar y proveer contenidos, usualmente documentos HTML, a través de una red (local o Internet)

A nivel de software, un servidor web es un programa que permite alojar y exponer (servir) contenidos a computadores que lo requieran (clientes) a través del protocolo HTTP.

## Arquitectura Cliente - servidor

Se refiere a la relación entre la entidad que provee contenido (servidor) y la que lo requiere (cliente).  En el caso de las tecnologías web, el servidor es es computador/software que provee un recurso y el cliente es el computador/software que solicita el recurso (Por ejemplo un computador portátil con un navegador web como Google Chrome o Mozilla Firefox ).

## Protocolo HTTP

Es un protocolo de comunicación que rige las interacciones e intercambios de información en la web.  Está diseñado para que los clientes realicen peticiones (un navegador web solicitando un documento) y para que los servidores entreguen respuestas a las peticiones de los clientes ( pueden ser documentos, datos, o respuestas de error)

## Sitio Web

Es el término para designar una colección de documentos HTML y otro tipo de contenidos (imágenes, datos, video, etc ) que usualmente están vinculados unos con otros y conforman un conjunto coherente de información. Un sitio web puede ser estático o dinámico.

### Sitio web estático

Es una colección de documentos HTML que han sido previamente generados y que se sirven tal como son.  Esta es la forma más simple de un sitio web.

### Ejercicio: Crear un sitio web estático

Instalar un sitio web en el servidor y modificar el HTML, el CSS y el JavaScript.

3. Mover la carpeta ```estatico``` al Document Root

4. Abrir la carpeta en VS Code

5. Modificar a gusto.

### Sitio web dinámico

Es una colección de documentos HTML generada por un software que se ejecuta en el servidor o, en muchos casos, entre el servidor y el cliente.  Estos documentos son generados por el software que usa unas plantillas HTML que son llenadas con información alojada en una base de datos. Esta acción de generar el documento se realiza en el momento en el que el cliente realiza una petición. El software que genera estos documentos suele llamarse aplicación web.  Las aplicaciones web más comunes son CMS como Wordpress.

#### Ejercicio: Instalar el CMS wordpress


1. Bajar wordpress de https://wordpress.org/latest.zip

2. Crear base de datos

3. Editar archivo de configuración

4. Instalar wordpress

5. Entrar al admin y crear un post

6. Consultar la base de datos y verificar el post en la tabla.

### Lenguajes de programación y servidores web

Una funcionalidad común de los servidores es ejecutar software.  Este software usualmente se encarga de gestionar las peticiones de los clientes (determinadas por urls), extraer información de una base de datos, incrustarla en plantillas HTML y entregarlas al cliente.  Los lenguajes más frecuentemente usados para este tipo de aplicaciones son: PHP, Python, JavaScript y Ruby.

### Bases de datos

Una base de datos es una forma estructurada de guardar información.

Las bases de datos se consultan a través de gestores o motores de bases de datos.  En la mayoría de los casos, estos motores ha sido diseñados según la arquitectura cliente-servidor, por lo tanto se llaman servidores de bases de datos.

Un servidor de bases de datos se encarga de gestionar la creación, modificación y consulta de bases de datos.

El paradigma más común de Bases de datos es el paradigma relacional, que da origen al lenguaje SQL.  Los servidores más usados para alojar bases de datos son de tipo SQL (MySQL, MaríaDB, PosgreSQL). Recientemente se han popularizado otros paradigmas de bases de datos llamados NoSQL, como las bases de datos basadas en documentos, o las bases de datos basadas en grafos.

#### Ejercicio: Crear una base de datos em MySQL usando phpMyAdmin y realizar una consulta usando el lenguaje SQL


1. Crear base de datos

2. Importar tablas

3. Realizar petición en SQL

### Conclusión

Usar el computador personal como un servidor web permite experimentar, desarrollar y probar la creación de contenido, interacción, navegación en sitios y aplicaciones web. Permite igualmente crear, modificar y  consultar bases de de datos con información procedente de investigaciones y procesos de creación.

Esto se puede hacer sin necesidad de contar con un servicio de hosting, dominio y otros servicios y  productos digitales que suelen ser costosos para los proyectos.

Por otro lado, usando un servidor web local es posible desarrollar y probar aplicaciones y contenidos que luego se pueden alojar en servidores web públicos y dedicados (web hosting compartido, VPS, etc ).
