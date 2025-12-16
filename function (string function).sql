-- functions set of statement 
-- two typs of function
-- scaler function row by row (reslt for each row
-- multi line fun  => work on multi line and give output 1
-- char_length function find the length of a char
-- trim( extra white space and char remove)
-- lpad function rpad function
-- round .5 value convert of upper values
use world;
select name, continent, upper(name) from country;
select name, continent, concat_ws('_',continent,code,'regex') from country;
select name, substr(name,1,3) from country;
select name,substr(name,-3,3) from country;

select name, continent from country
where substr(name,1,3) ='alg';
select name from country
where name like 'alg%';
-- instr serach position of char
select name ,instr(name,'e') from country;
select name ,char_length(name)from country;
select name, ltrim(name) from country;
select trim( '         yeshggggg');select name from country;
select trim(both'g' from '     yedhggggg');
select name ,trim(both'A' from name) from country;
select name,population ,lpad(population,9, '0') from country;
-- numeric function, dates
-- truncate f
-- mode
-- pow function create a pow values like (2,3)=8

use world;
select lifeexpectancy, round(lifeexpectancy) from country;
select 83.62 ,round(83.67,2);
select (456.78), round(276.53,3);
select (456.67),round(456.68,-1),truncate(456.66,1);
select (456.67),round(456.68,-1),truncate(456.66,1),mod(34,1);
select pow(2,3),ceil(3.000008),floor(3.9898998);

-- date function are inbulit date and time 
select now(),curdate(),current_timestamp(),current_time();
-- add date
select now(),adddate(now(),2),adddate(now(),interval 3 month);
-- most important year
select now(),date_format( now(),'month is%M & year is %y & week is %W week is %w');
use world;
select count(*),count(indepyear
),count(continent) from country;
select count(continent)from country;
select distinct continent,region from country;
select count(population),sum(population),avg(population) from country;
select * from country;
select count( distinct governmentform )from country;
select sum(population), count(name), count(distinct(indepyear)) from country where continent='africa';
-- get the total country the avg sarfto area and total population 
select * from country;
select count(name),avg(surfacearea),sum(population) from country where indepyear> 1947 and indepyear<1998;
select count(name),count(distinct(continent)),avg(population), sum(capital) from country where name like 'a%' or name like 'd%';
select continent,count(*) from country group by  continent;
select indepyear ,count(*) from country group by indepyear;
select * from country;
select governmentform,count(*) , continent,count(*)from country  group by governmentform,continent;
select* from city;
use world;
select count(name),count(district),count(distinct(district)),sum(population) from city group by district;
select district ,count(name) as toatlcity from city group by district;
select * from country;
select continent, count(name) from country where indepyear>1950 group by continent;
select continent, sum(population) from country  group by continent having  sum(population) > 100;
select continent, sum(population) from country where lifeexpectancy >35  group by continent;
select governmentform, sum(population),count(name) from country where capital>30 group by governmentform having sum(population)>300000;
select count(name) ,count(distinct(governmentform)) from country group by governmentform  having totalcountry >30 ;







