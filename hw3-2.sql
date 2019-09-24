
text/x-sql hw3-2.sql ( ASCII text )
/* Joshua Stewart
cs 325 homework 3-2
27 September 2016
*/

spool hw3-out.txt

prompt problem 2 part a
select *
from client;

prompt 2 part b

select distinct vid_format, vid_rental_price
from video;

prompt 2 part c
select * 
from video
where vid_length > 75;

prompt 2 part d
select vid_id
from rental
where vid_id = '00000D';


prompt 2 part e
select * 
from rental, video;

prompt 2 part f
select *
from rental, video
where rental.vid_id = video.vid_id;

prompt 2 part g
select client.cli_id, cli_lname, cli_fname, cli_phone, vid_id
from client, rental
where client.cli_id = rental.cli_id;
select client.cli_id, cli_lname, cli_fname, cli_phone, vid_id
from client join rental
     on client.cli_id = rental.cli_id

prompt 2 part h
select cli_lname,  vid_id
from client, rental
where client.cli_id = rental.cli_id;
select cli_lname,  vid_id
from client join rental
     on client.cli_id = rental.cli_id

spool off
