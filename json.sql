drop table myuser_with_json;

create table myuser_with_json(id serial primary key, adres json, name text);

insert into myuser_with_json values (1, '{"sehir": "Ankara"}'::json, 'Ustun');

insert into myuser_with_json values (2, '{"sehir": "Ankara"}'::json, 'Ahmet');

insert into myuser_with_json values (3, '{"sehir": "Istanbul"}'::json, 'Mehmet');

select * from myuser_with_json where adres->>'sehir' = 'Ankara';
