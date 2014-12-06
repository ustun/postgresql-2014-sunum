drop table myuser;

create table myuser(id serial primary key, name text, hobiler text[]);

insert into myuser(name, hobiler) values ('Ustun', ARRAY['Kitap', 'Muzik', 'Resim']);
insert into myuser(name, hobiler) values ('Ahmet', ARRAY['Muzik', 'Resim']);

select * from myuser where hobiler @> ARRAY['Kitap'];

select * from myuser where hobiler @> ARRAY['Muzik'];
