# BD Inventario - MySQL

Scripts y material de trabajo para el diseño de una base de datos de inventario de equipos, desarrollada en MySQL.

## Contenido

- [`Crea BD_Inventario.sql`](Crea%20BD_Inventario.sql) — Creación de la base de datos `bd_inventario` y sus tablas (`area`, `categoria`, `empleado`, `equipo`).
- [`Carga datos BD_Inventario.sql`](Carga%20datos%20BD_Inventario.sql) — Datos de ejemplo para poblar las tablas anteriores.
- PDFs con los enunciados e informes del curso (exámenes, formatos de informe, procedimientos almacenados).

## Modelo de datos

- **area**: áreas de la organización (Tecnología, Recursos Humanos, etc.).
- **categoria**: tipos de equipo (Laptop, PC Escritorio, Servidor, etc.).
- **empleado**: personal registrado, asociado a un área.
- **equipo**: equipos de inventario, con categoría, responsable y empleado que realizó el registro.

## Uso

Ejecutar en MySQL en este orden:

```sql
SOURCE "Crea BD_Inventario.sql";
SOURCE "Carga datos BD_Inventario.sql";
```
