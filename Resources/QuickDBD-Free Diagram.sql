-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Pz5TVX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "artist" (
    "artist_id" int   NOT NULL,
    "artist_name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_artist" PRIMARY KEY (
        "artist_id"
     )
);

CREATE TABLE "songs" (
    "artist_id" int   NOT NULL,
    "title" varchar(255)   NOT NULL,
    "year" int   NOT NULL,
    "genre_id" int   NOT NULL
);

CREATE TABLE "genre" (
    "genre_id" int   NOT NULL,
    "genre" varchar(255)   NOT NULL,
    CONSTRAINT "pk_genre" PRIMARY KEY (
        "genre_id"
     )
);

CREATE TABLE "accoldes" (
    "year" date   NOT NULL,
    "category" varchar(255)   NOT NULL,
    "nominee" varchar(255)   NOT NULL,
    "worker" varchar(400)   NOT NULL,
    "winner" varchar(6)   NOT NULL,
    "artist_id" int   NOT NULL
);

ALTER TABLE "songs" ADD CONSTRAINT "fk_songs_artist_id" FOREIGN KEY("artist_id")
REFERENCES "artist" ("artist_id");

ALTER TABLE "songs" ADD CONSTRAINT "fk_songs_genre_id" FOREIGN KEY("genre_id")
REFERENCES "genre" ("genre_id");

ALTER TABLE "accoldes" ADD CONSTRAINT "fk_accoldes_artist_id" FOREIGN KEY("artist_id")
REFERENCES "artist" ("artist_id");

