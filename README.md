# CampusFest 🎉

CampusFest es un proyecto pensado para organizar los eventos del campus de una forma más fácil: ver cuántos cupos quedan, reservar tu lugar, registrar tu asistencia y que los organizadores puedan gestionar los eventos y sacar reportes.

Por ahora este repositorio guarda los diagramas con los que estamos planeando cómo va a funcionar todo. Todavía no hay código, primero toca tener claro el plan.

## ¿Qué se puede hacer?

**Estudiante**
- Consultar cupos de un evento.
- Reservar un lugar, confirmarlo (tiene 10 minutos) o cancelarlo.
- Registrar su asistencia al llegar.

**Organizador**
- Gestionar un evento (por ejemplo, cambiar su descripción).
- Generar el reporte de reservas y el de asistencia.

Si una reserva no se confirma en 10 minutos, el sistema la cancela solo y libera el cupo.

## ¿Qué hay en las carpetas?

Todos los diagramas están hechos en [draw.io](https://app.diagrams.net/).

### `docs/CdU`
Los casos de uso: quién usa la app y para qué.

### `docs/Analisis`
Cómo se conectan las partes por dentro, con una carpeta por cada uno de los 9 casos de uso. Cada una tiene su diagrama de **colaboración** (sin mensajes), de **comunicación** (con mensajes numerados) y de **secuencia**. Todos incluyen *Consultar eventos*.

| # | Carpeta | Quién | De qué trata |
|---|---|---|---|
| 1 | `Consultar_Cupos` | Estudiante | Ver cuántos cupos quedan |
| 2 | `Reservar` | Estudiante | Apartar un lugar, que queda pendiente |
| 3 | `Confirmar_Reserva` | Estudiante | Confirmar antes de los 10 minutos |
| 4 | `Cancelar_Reserva_Estudiante` | Estudiante | Cancelar su reserva |
| 5 | `Registrarse_Asistencia` | Estudiante | Registrar el ingreso con el código QR |
| 6 | `Gestionar_Evento` | Organizador | Cambiar los datos de un evento |
| 7 | `Generar_Reporte_Reservas` | Organizador | Listado de reservas de un evento |
| 8 | `Generar_Reporte_Asistencia` | Organizador | Listado de ingresos de un evento |
| 9 | `Cancelar_Reserva_Organizador` | 10 mins de una reserva | Se cancela sola si no se confirma a tiempo |

Además:
- `Colaboracion_General.drawio`: la vista general de cómo trabajan juntas todas las piezas.
- `Clases_Entidad/`: las "cosas" principales del sistema (evento, reserva, asistencia, estudiante), con estereotipos y sin ellos (con atributos y métodos).

### `Retos`
Los retos que resolvimos en clase (`RETO1` a `RETO8`) con su solución en draw.io, y un PDF con los enunciados.

## ¿Cómo abrir los diagramas?

Los archivos `.drawio` se abren gratis en [app.diagrams.net](https://app.diagrams.net/) o con la extensión de draw.io en VS Code.

