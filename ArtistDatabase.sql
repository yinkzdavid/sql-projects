use first_project;

create table Artist	(

ArtistId			integer		NOT NULL,
ArtistName			char(30)	NOT NULL,
Rating				Char(10)	NOT NULL,
Phone				integer		NULL,
CONSTRAINT			Artist_PK	primary key(ArtistId)
);

create table Album	(

ArtistId		integer			NOT NULL,
TrackName		char(30)		NOT NULL,
Genre			char(15)		NOT NULL,
YearReleased	Integer			NOT NULL,
constraint		Album_PK		primary key(TrackName, YearReleased),
CONSTRAINT		Album_FK		foreign key(ArtistId)
				References	Artist(ArtistId)

);

insert into artist values	(
'100', 'Ebenezar Obey', '****', '12345');
insert into artist values	(
'101', 'Yinka Ayefele', '***', '23451');
insert into artist values	(
'200', 'Tope Alabi','****', '12986');
insert into artist values	(
'300', 'Dare Melody', '*', '23489');
insert into artist values	(
'400', 'Ty Bello', '**', '21213');



insert into album values	(
'100', 'Olomi', 'apala', '1980');
insert into album values	(
'101', 'next level', 'gospel', '2000');
insert into album values	(
'200', 'angeli','gospel', '2012');
insert into album values	(
'300', 'ojo ologo', 'fuji', '2005');
insert into album values	(
'400', 'isimi', 'hiphop', '2018');

alter table album
add albumId integer NOT NULL;

alter table album
drop primary key;

alter table album
add primary key(albumId, trackName);
