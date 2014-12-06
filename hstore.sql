create extension if not exists hstore;

create table myuser_with_hstore(id int primary key, adres hstore, isim text);


insert into myuser_with_hstore (id, isim, adres)
       values (1, 'Ustun', ARRAY[['sehir', 'Ankara'], ['postaKodu', '06370']]::hstore);
-- ya da values (1,  'Ustun', ARRAY['sehir', 'Ankara', 'postaKodu', '06370']::hstore);

insert into myuser_with_hstore (id, isim, adres)
       values (2, 'Ahmet', ARRAY[['sehir', 'Ankara'], ['postaKodu', '06370']]::hstore);

insert into myuser_with_hstore (id, isim, adres)
       values (3, 'Cuneyt', ARRAY[['sehir', 'Istanbul'], ['postaKodu', '34370']]::hstore);


select * from myuser_with_hstore where adres->'sehir'='Ankara';
