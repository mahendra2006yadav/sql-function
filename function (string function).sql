-- functions set of statement 
-- two typs of function
-- scaler function row by row (reslt for each row
-- multi line fun  => work on multi line and give output 1
-- char_length function find the length of a char
-- trim( extra white space and char remove)
-- lpad function rpad function
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





