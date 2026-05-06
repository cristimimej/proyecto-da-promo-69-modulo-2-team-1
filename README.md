# proyecto-da-promo-69-modulo-2-team-1

# 🎵 O Son Do Camiño 2027 — Análisis de Viabilidad Artística

> *"La música es el camino. Nosotros solo ponemos el cartel."*

---

## 📖 Contexto

Con motivo de la próxima edición del **O Son Do Camiño 2027**, la organización del festival nos ha encargado un análisis exhaustivo para determinar qué artistas del panorama actual tienen más probabilidades de garantizar el éxito del evento.

Para ello, la plantilla de la organización lanzó una consulta interna sobre sus artistas favoritos. Con esa lista en mano, nuestro equipo ha cruzado datos de dos grandes fuentes de información musical:

- **Last.fm** → métricas de popularidad, biografías y artistas similares
- **Deezer** → catálogo discográfico, géneros y actividad reciente

El objetivo: **convertir preferencias subjetivas en criterios objetivos de viabilidad** para construir el cartel más sólido posible.

---

## 🗄️ Base de Datos

El proyecto trabaja con dos tablas principales en **MySQL**:

### `api lastfm`
| Campo | Descripción |
|---|---|
| `artista` | Nombre del artista (PK) |
| `biografia` | Biografía extraída de Last.fm |
| `listeners` | Oyentes únicos mensuales |
| `playcount` | Reproducciones totales históricas |
| `similares` | Artistas similares según Last.fm |

### `deezer`
| Campo | Descripción |
|---|---|
| `artist_id` | ID del artista en Deezer |
| `artist_name` | Nombre del artista |
| `album_title` | Título del álbum |
| `track_title` | Título de la canción |
| `type` | Tipo de contenido |
| `year` | Año de lanzamiento |
| `genre` | Género musical |
| `genre_id` | ID del género |

---

## 🔗 Cruce de Tablas

Las dos APIs utilizan sistemas de IDs propios e incompatibles entre sí, por lo que el cruce se realiza por **nombre de artista** usando normalización de texto (`LOWER`) para evitar fallos por diferencias de capitalización:

---

## 📊 Criterios de Viabilidad Analizados

### 1. 🔥 Popularidad
Ranking de artistas por oyentes y reproducciones totales en Last.fm. Los grandes números indican tirón de público real.

### 2. 📅 Actividad Reciente
Artistas con lanzamientos en Deezer durante 2024, 2025 o 2026. Un artista activo tiene más probabilidades de estar de gira y con material nuevo que presentar.

### 3. 🎸 Diversidad de Géneros
Distribución del cartel por géneros musicales. Un festival equilibrado evita saturar a un mismo perfil de público y amplía el alcance del evento.

### 4. 🤝 Artistas Relacionados
Análisis del campo `similares` de Last.fm para detectar solapamientos de audiencia entre artistas y optimizar la distribución por días o escenarios.

### 5. 🎵 Volumen de Repertorio
Número de álbumes y canciones disponibles en Deezer. Un artista con catálogo amplio puede ofrecer un set list más variado e interesante.

---

## 🏆 Objetivo Final

Generar un **informe de viabilidad** que permita a la organización del Son do Camiño 2027 tomar decisiones fundamentadas sobre:

- Qué artistas incluir en el cartel
- Cómo distribuirlos por escenarios y días
- Qué combinaciones maximizan la asistencia y la satisfacción del público

---

## 🛠️ Tecnologías

- **MySQL 8.0** — gestión y consulta de la base de datos
- **Last.fm API** — datos de popularidad y contexto artístico
- **Deezer API** — catálogo discográfico actualizado

---

## 👥 Equipo

- 🌟 Estefania Zamorano Mancilla - Scrum Master
- 🌟 Jezabel Sanchez Romero
- 🌟 Julia Corada Montano
- 🌟 Cristina Millán Mejías

Proyecto desarrollado como ejercicio de integración y análisis de datos procedentes de múltiples APIs en MYSQL Workbench.

 
---

*Son do Camiño 2027 — Que el camino elija la música.*
