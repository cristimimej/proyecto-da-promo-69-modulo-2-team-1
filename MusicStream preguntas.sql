CREATE DATABASE musicstream;

USE musicstream;

SELECT * FROM canciones;
SELECT * FROM artistas;
SELECT * FROM tracks_lastfm;



-- ¿Cuál es el artista con más variedad de género?
   
SELECT c.artist_name Artista, COUNT(DISTINCT c.genre) Géneros
FROM canciones c
GROUP BY c.artist_name
ORDER BY Géneros DESC
LIMIT 3;
	-- Artista(s) con más géneros --> Mr. Kilombo y La Plazuela

-- ¿Qué artista tiene más reproducciones por año?

SELECT artista Artista, playcount Reproducciones
FROM artistas
ORDER BY playcount DESC
LIMIT 3;
	-- Billie Eilish es la artista con más reproducciones
 
-- ¿De qué año tenemos más canciones?
SELECT year Año, COUNT(DISTINCT track_title) Canciones
FROM canciones
GROUP BY year
ORDER BY Canciones DESC
LIMIT 3;
 
	-- 2025 es el año con más canciones (206)
 
-- ¿Qué género es el mejor valorado?
	-- No hay columna de valoración → usamos listeners como métrica de popularidad
SELECT c.genre Género, SUM(a.listeners) Oyentes
FROM canciones c
LEFT JOIN artistas a ON LOWER(a.artista) = LOWER(c.artist_name)
GROUP BY c.genre
ORDER BY Oyentes DESC
LIMIT 3;
	-- EL genero mejor valorado es Alternativo
    
-- ¿Cuál es la canción mejor valorada?  
 
SELECT track Canción, artista Artista, playcount Reproducciones
FROM tracks_lastfm
ORDER BY playcount DESC
LIMIT 3;
	-- "Birds Of A Feather" - Billie Eilish

-- ¿Cuál es el artista con más valoración?

SELECT artista Artista, listeners Oyentes
FROM artistas
ORDER BY listeners DESC
LIMIT 3;
	-- Queen
    
-- ¿Cuál es el álbum más valorado? 
	-- Agrupamos los listeners del artista por álbum
SELECT c.artist_name Artista, c.album_title album, SUM(tlf.playcount) oyentes
FROM canciones c
INNER JOIN tracks_lastfm tlf
WHERE c.track_title = tlf.track
GROUP BY c. artist_name, c.album_title
ORDER BY oyentes DESC
LIMIT 3;
		-- El album más escuchado es "The Metallica Blacklist" - Metallica
-- ¿Qué artistas similares podríamos oír si nos gusta un artista en concreto?
	-- Sustituye 'Billie Eilish' por el artista deseado
SELECT artista Artista, similares "Artistas similares"
FROM artistas
WHERE artista = 'Billie Eilish';