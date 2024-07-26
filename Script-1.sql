create table if not exists genre
(
id_genre SERIAL primary key,
Название VARCHAR(60) not NULL
);

create table if not exists ЖанрИсполнитель
(
id_genre SERIAL references genre(id_genre),
id_executor SERIAL references исполнитель(id_executor),
constraint ge primary key (id_genre, id_executor)
);

create table if not exists исполнитель
(
id_executor SERIAL primary key,
Имя VARCHAR(40) not null
);


create table if not exists АльбомИсполнитель
(
id_executor SERIAL references исполнитель(id_executor),
id_albom SERIAL references альбом(id_albom)
);

create table if not exists альбом
(
id_albom SERIAL primary key,
Название VARCHAR(60) not null,
Год_выпуска date not null
);

create table if not exists трек
(
id_albom SERIAL references альбом(id_albom),
id_TRACK SERIAL primary key,
Название VARCHAR(60) primary key,
Длительность timestamp not null
);

create table if not exists СборникТреков
(
Название VARCHAR(60) primary key references трек(Название)
);

create table if not exists сборник
(
Название VARCHAR(60) not null,
Год_выпуска date not null
)