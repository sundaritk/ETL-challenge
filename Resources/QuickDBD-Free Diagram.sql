-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Pz5TVX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "artist" (
    "artistID" int   NOT NULL,
    "artist_name" varchar(35)   NOT NULL,
    CONSTRAINT "pk_artist" PRIMARY KEY (
        "artistID"
     )
);

CREATE TABLE "album" (
    "albumID" int   NOT NULL,
    "artistID" int   NOT NULL,
    "album_name" varchar(50)   NOT NULL,
    "no_of_songs" int   NOT NULL,
    "year" date   NOT NULL,
    CONSTRAINT "pk_album" PRIMARY KEY (
        "albumID"
     )
);

CREATE TABLE "songs" (
    "songID" int   NOT NULL,
    "albumID" int   NOT NULL,
    "artistID" int   NOT NULL,
    "song_name" varchar(100)   NOT NULL,
    "top" varchar(10)   NOT NULL,
    CONSTRAINT "pk_songs" PRIMARY KEY (
        "songID"
     )
);

CREATE TABLE "accoldes" (
    "ID" int   NOT NULL,
    "year" date   NOT NULL,
    "category" varchar(50)   NOT NULL,
    "nominee" varchar(50)   NOT NULL,
    "results" varchar(15)   NOT NULL,
    "artistID" int   NOT NULL,
    "songID" int   NOT NULL,
    CONSTRAINT "pk_accoldes" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "album" ADD CONSTRAINT "fk_album_artistID" FOREIGN KEY("artistID")
REFERENCES "artist" ("artistID");

ALTER TABLE "songs" ADD CONSTRAINT "fk_songs_albumID" FOREIGN KEY("albumID")
REFERENCES "album" ("albumID");

ALTER TABLE "songs" ADD CONSTRAINT "fk_songs_artistID" FOREIGN KEY("artistID")
REFERENCES "artist" ("artistID");

ALTER TABLE "accoldes" ADD CONSTRAINT "fk_accoldes_artistID" FOREIGN KEY("artistID")
REFERENCES "artist" ("artistID");

ALTER TABLE "accoldes" ADD CONSTRAINT "fk_accoldes_songID" FOREIGN KEY("songID")
REFERENCES "songs" ("songID");

