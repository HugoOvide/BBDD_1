# BBDD_1
## MEMORIA DEL TRABAJO DE BBDD
-------------------------------------------------------------------------------------------------------------------------------------

- ENUNCIADO

El enunciado de la práctica menciona el desarrollo de una plataforma de intercambio y compraventa de discos musicales en formato físico, con varias entidades principales como usuarios, discos, ediciones, artistas, ventas, y evaluaciones. A continuación, crearé el diagrama entidad-relación (ER) basándome en estos elementos clave y siguiendo la notación de Silberchatz. El diagrama incluye:

Usuarios: nombre, apellidos, nombre de usuario (único), correo electrónico.
Canciones: título, duración.
Álbumes: título, fecha de lanzamiento, géneros (pueden pertenecer a varios géneros).
Artistas: nombre, biografía, URL, y para grupos, los nombres de los componentes.
Ediciones: año, país, formato (vinilo, casete, CD, etc.).
Ventas: precio, fecha, estado (preparación, enviado, recibido).
Evaluaciones: puntuación, descripción.

Relaciones:
Un usuario tiene una colección de discos y puede tener una lista de deseos.
Un álbum puede estar compuesto por varias canciones.
Las canciones pueden pertenecer a más de un álbum.
Un usuario puede realizar ventas y evaluaciones de otros usuarios.

### Documentación detallada de los objetos del diagrama y los supuestos semánticos considerados.

Dentro del sistema podemos encontrar los diferentes objetos del diagrama:
### Restricciones capturadas. 
