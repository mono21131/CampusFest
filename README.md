# 🎟️ CampusFest

¡Bienvenido a **CampusFest**! Este proyecto nace con la idea de hacer mucho más fácil la gestión de eventos en la universidad. Olvídate de las filas o de no saber si todavía quedan lugares: aquí los estudiantes pueden apartar su cupo en segundos y los organizadores pueden llevar el control de todo sin complicaciones.

---

## 🚀 ¿Cómo funciona?

El sistema está pensado para dos tipos de usuarios:

### 👤 Para los Estudiantes:
* **Ver cupos en tiempo real:** Sabes al instante cuántos lugares quedan disponibles.
* **Apartar tu lugar:** Haces una reserva que queda pendiente por **10 minutos**. Si la confirmas a tiempo, ¡el cupo es tuyo! Si se te pasa el tiempo, el sistema lo libera automáticamente para alguien más.
* **Cancelar si no puedes ir:** Si cambias de planes, puedes cancelar tu reserva para que otro compañero pueda aprovecharla.
* **Entrar con código QR:** El día del evento, solo muestras tu código QR para registrar tu asistencia de una.

### 👔 Para los Organizadores:
* **Editar eventos:** Actualizar información básica como descripciones, fechas u horarios.
* **Reportes al instante:** Ver la lista de quiénes reservaron y quiénes ya ingresaron al evento.

---

## 📁 ¿Qué vas a encontrar en este repositorio?

Actualmente, el proyecto está en su etapa de **diseño y planificación**. Antes de tirar código, dejamos todo bien estructurado en diagramas:

* **`CdU/`**: Contiene los diagramas de **Casos de Uso**, que muestran de forma clara qué acciones puede realizar cada usuario en la plataforma.
* **`Analisis/`**: Explica cómo funciona el sistema por dentro. Incluye los diagramas de **colaboración, comunicación y secuencia** para cada función (consultar cupos, reservar, cancelar, reportes, etc.), además del modelo de datos (`Clases_Entidad`).
* **`docs/`**: Contiene los retos y ejercicios prácticos (`RETO1` al `RETO8`) donde se fueron resolviendo paso a paso las diferentes decisiones de diseño y arquitectura.

---

## 🖥️ ¿Cómo ver o editar los diagramas?

Todos los diagramas fueron creados con **Draw.io** (archivos `.drawio`). Puedes abrirlos gratis de dos formas:

1. **En la web:** Entra a [app.diagrams.net](https://app.diagrams.net/) y arrastra cualquier archivo `.drawio`.
2. **En VS Code / Cursor:** Instala la extensión **Draw.io Integration** para abrirlos y editarlos directamente en tu editor.
