--ЗАДАНИЕ 2

--1.Название и продолжительность самого длительного трека.

SELECT "name",duration_song 
FROM songs
where duration_song = (SELECT MAX(duration_song) FROM songs);


--2.Название треков, продолжительность которых не менее 3,5 минут.

SELECT "name", duration_song
FROM songs
WHERE EXTRACT(EPOCH FROM duration_song) >= 3.5 * 60;


--3.Названия сборников, вышедших в период с 2018 по 2020 годы включительно.

select "name" 
from collection 
where year_release_collection between '2018-01-01' and '2020-12-31';


--4.Исполнители, чьё имя состоит из ДВУХ слова.

select "name"
from singers
where name like '% %';


--5.Название треков, которые содержат слова «ck» или «oo».

select "name"
from singers
where name like '%ck%' or name like '%oo%';


--ЗАДАНИЕ 3

--1.Количество исполнителей в каждом жанре.

select g.name AS genre_name, COUNT(gs.singers_id) AS num_singers
from gener g
left join gener_singers gs ON g.id = gs.gener_id
left join singers s ON singers_id = s.id
group by g.name;


--2.Количество треков, вошедших в альбомы 2019–2024 годов.

select COUNT(s.id) AS num_songs
from songs s 
join albom a ON s.albom_id = a.id 
wher a.year_release_albom between '2019-01-01' AND '2024-12-31';


--3.Средняя продолжительность треков по каждому альбому.

select a."name", AVG(duration_song)
from songs s
join albom a on s.albom_id = a.id 
group by a.name;


--4.Все исполнители, которые не выпустили альбомы в 2020 году.

select s."name"
from singers s
left join albom a ON s.id = a.id and EXTRACT(year FROM a.year_release_albom) = 2020
WHERE a.id IS NULL;


--5.Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

SELECT c."name"
FROM collection c
JOIN singers s ON c.id = s.id 
WHERE s.id = 1;










