--GENER

INSERT INTO gener (id, name) 
values (1, 'Rock');

INSERT INTO gener (id, name) 
values (2, 'POP');

INSERT INTO gener (id, name) 
values (3, 'Djaz');

INSERT INTO gener (id, name) 
values (4, 'Rap');


--SINGERS

INSERT INTO singers (id,name) 
values (1, 'Victor Tsoi');

INSERT INTO singers (id, name) 
values (2, 'Michael Jackson');

INSERT into singers (id, name) 
values (3, 'Billie Holiday');

INSERT into singers (id, name) 
values (4, 'Snoop Dogg');

--ALBOM
INSERT into albom (id, name, year_release_albom) 
values (1, 'Звезда по имени Солнце','1989-07-29');

INSERT into albom (id, name, year_release_albom) 
values (2, 'Bad', '1987-07-31');

INSERT into albom (id, name, year_release_albom) 
values (4, 'B.O.D.R','2022-02-11');

INSERT into albom (id, name, year_release_albom) 
values (3, 'Solitude','1952-03-26');

--SONGS

INSERT into songs (name, duration_song, albom_id) 
values ('BAD', '0:4:20', 2);

INSERT into songs (name, duration_song, albom_id) 
values ('Песня без слов', '0:5:3', 1);

INSERT into songs (name, duration_song, albom_id) 
values ('Звезда по имени Солнце', '0:3:45', 1);

INSERT into songs (name, duration_song, albom_id) 
values ('Пачка сигарет', '0:4:26', 1);

INSERT into songs (name, duration_song, albom_id) 
values ('Стук', '0:3:49', 1);

INSERT into songs (name, duration_song, albom_id) 
values ('Gun Smoke', '0:1:50', 3);

INSERT into songs (name, duration_song, albom_id) 
values ('Solitude', '0:3:27', 4);


--COLLECTION

INSERT into collection (name, year_release_collection) 
values ('ЦОЙ', '2022-03-15');

INSERT into collection (name, year_release_collection) 
values ('MJ', '2010-01-10');

INSERT into collection (name, year_release_collection) 
values ('Snoopy', '2020-10-10');

INSERT into collection (name, year_release_collection) 
values ('Holiday', '2011-11-11');


--SINGERS_ALBOM

INSERT into singers_albom (singers_id, albom_id) 
values (1, 1);

INSERT into singers_albom (singers_id, albom_id) 
values (2, 2);

INSERT into singers_albom (singers_id, albom_id) 
values (3, 3);

INSERT into singers_albom (singers_id, albom_id) 
values (4, 4);

--GENER_SINGERS

INSERT into gener_singers (gener_id, singers_id) 
values (1, 1);

INSERT into gener_singers (gener_id, singers_id) 
values (2, 2);

INSERT into gener_singers (gener_id, singers_id) 
values (3, 3);

INSERT into gener_singers (gener_id, singers_id) 
values (4, 4);

--COLECTION_SONGS

INSERT into collection_songs (collection_id, songs_id) 
values (1, 2);

INSERT into collection_songs (collection_id, songs_id) 
values (1, 3);

INSERT into collection_songs (collection_id, songs_id) 
values (1, 4);

INSERT into collection_songs (collection_id, songs_id) 
values (2, 1);

INSERT into collection_songs (collection_id, songs_id) 
values (3, 6);

INSERT into collection_songs (collection_id, songs_id) 
values (4, 7);





