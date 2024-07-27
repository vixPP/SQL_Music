CREATE TABLE IF NOT EXISTS Gener (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null
);

CREATE TABLE IF NOT EXISTS Singers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Gener_Singers (
	Gener_id INTEGER REFERENCES Gener(id),
	Singers_id INTEGER REFERENCES Singers(id),
	CONSTRAINT pk_Geners PRIMARY KEY (Gener_id, Singers_id)
);

CREATE TABLE IF NOT EXISTS Albom (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null,
	year_release_albom date NOT null 
);

CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null,
	duration_song time not null,  
	Albom_id INTEGER REFERENCES Albom(id)
);

CREATE TABLE IF NOT EXISTS Singers_Albom (
	Singers_id INTEGER REFERENCES Singers(id),
	Albom_id INTEGER REFERENCES Albom(id),
	CONSTRAINT pk_Singers_and_Albom PRIMARY KEY (Singers_id, Albom_id)
);	

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT null,
	year_release_collection date not null  
);


CREATE TABLE IF NOT EXISTS Collection_Songs(
	Songs_id INTEGER REFERENCES Songs(id),
	Collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_Collection_of_Songs PRIMARY KEY (Songs_id, Collection_id)
);
