--SQL Fake Book Song Data


--CREATE DATABASE TABLES
--=======================

create table if not exists songs(
id integer primary key not null, --auto increment key 
songTitle text NOT NULL, --title of the songs
bookCode text NOT NULL, --book code for the the fake book the song is from
page int, --page number in book where song appears
student_number text NOT NULL --student who contributed the data
);

--INSERT DATA
--=======================

BEGIN TRANSACTION;

--Insert songs
insert into songs(songTitle, bookCode, page, student_number) values ('Marta''s Theme','PATM', 376, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Mas Alla','PATM', 158, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Message to a Friend','PATM', 324, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Midwestern Nights Dream','PATM', 22, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Minuano (Six-Eight)','PATM', 214, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Missouri Uncompromised','PATM', 20, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Mojave','PATM', 367, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Nacada','PATM', 14, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Naked Moon','PATM', 276, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Never Too Far Away','PATM', 270, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('New Chautauqua','PATM', 62, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Nine Over Reggae','PATM', 279, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Not to Be Forgotten','PATM', 314, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Oasis','PATM', 30, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Offramp','PATM', 128, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Omaha Celebration','PATM', 16, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('On the Night You Were Born','PATM', 370, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Outcasts','PATM', 413, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Parallel Realities','PATM', 192, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Passaggio Per II Paradiso (Main Theme)','PATM', 372, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Phase Dance','PATM', 42, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Praise','PATM', 187, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Pretty Scattered','PATM', 100, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Quartet (Introduction)','PATM', 355, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Question & Answer','PATM', 264, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Quiet Rising','PATM', 319, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Rain River','PATM', 302, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('The Red One','PATM', 320, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Red Sky','PATM', 348, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('The Red Wind','PATM', 157, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Resolution','PATM', 425, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('River Quay','PATM', 31, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('The Road to You','PATM', 278, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('The Roots of Coincidence','PATM', 401, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('San Lorenzo','PATM', 54, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Say the Brother''s Name','PATM', 326, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('S.C.O','PATM', 325, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Sea Song','PATM', 13, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('The Search','PATM', 75, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Second Thought','PATM', 368, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('See the World','PATM', 304, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('September Fifteenth','PATM', 107, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Seven Days','PATM', 360, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Sirabhorn','PATM', 19, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Slip Away','PATM', 240, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('So May It Secretly Begin','PATM', 211, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Something to Remind You','PATM', 338, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Sometimes I See','PATM', 359, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Song for Bilbao','PATM', 152, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Soul Cowboy','PATM', 435, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Spring Ain''t Here','PATM', 246, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Story from a Stranger','PATM', 154, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('A Story Within a Story','PATM', 406, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Straight on Red','PATM', 148, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Stranger in Town','PATM', 352, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Sueno Con Mexico','PATM', 66, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('The Sun in Montreal','PATM', 430, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Sunlight','PATM', 308, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Take Another Look','PATM', 312, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Tears of Rain','PATM', 369, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Tell Her You Saw Me','PATM', 311, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Tell It All','PATM', 180, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Third Wind','PATM', 228, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('This Is Not America','PATM', 200, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Three Flights Up','PATM', 269, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Timeline (For Elvin)','PATM', 428, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('To the End of the World','PATM', 342, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Too Soon Tomorrow','PATM', 410, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Travels','PATM', 112, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Trigonometry','PATM', 210, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('The Truth Will Always Be','PATM', 289, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Uniquity Road','PATM', 21, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Unity Village','PATM', 18, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Wasn''t Always Easy','PATM', 178, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Watercolors','PATM', 28, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('We Had a Sister','PATM', 315, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('We Live Here','PATM', 346, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('What Do You Want?','PATM', 429, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('When We Were Free','PATM', 356, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Whittlin''','PATM', 318, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('The Whopper','PATM', 32, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Additional Lyrics','PATM', 437, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Appendix','PATM', 438, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Meditation','PATM', 446, '100823576');
insert into songs(songTitle, bookCode, page, student_number) values ('Acknowledgments','PATM', 448, '100823576');


END TRANSACTION;