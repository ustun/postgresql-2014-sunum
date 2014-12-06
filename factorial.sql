drop aggregate product(numeric);
drop function myfactorial(numeric);


-- yardimcilar
select generate_series(1, 10);

select generate_series(1, 10, 2);

select 3 * 4;

select numeric_mul(3, 4);

-- fonksiyon yaratma

create aggregate product(numeric)    (sfunc=numeric_mul, stype=numeric, initcond=1);

select product(x) from generate_series(1, 5) as x;

create function myfactorial(i numeric)  returns integer
   as 'select product(x) from generate_series(1, i::integer) as x;'
   language sql;
