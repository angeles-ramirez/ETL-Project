-- Life Expectancy Table
create table life_expectancy(
id serial PRIMARY KEY NOT NULL,
country int,
year int,
status int,
life_expectancy int,
population int
)

-- 

-- Create Two Tables
CREATE TABLE UN_data (
  country TEXT PRIMARY KEY,
  region TEXT,
  pop_in_1000s FLOAT, 
  pop_dens_per_sqkm FLOAT, 
  males_per_100_fem FLOAT, 
  GDP_in_mil_dol FLOAT, 
  GDP_per_cap_in_mil FLOAT, 
  unemploy_perct FLOAT, 
  pop_growth_rate_perct FLOAT, 
  live_births_per_woman FLOAT
);

-- Joins tables
/* united_nations_transformed columns: country, Region  */
/* free_eco1 columns: Country Name, WEBNAME, CountryID */
/* life_expectancy columns: country, year  */

select * from free_ecos_4
select * from world_happiness_15


SELECT * FROM life_expectancy
JOIN world_happiness_15
	ON life_expectancy.country=world_happiness_15.country
JOIN world_happiness_16
	ON world_happiness_15.country=world_happiness_16.country
JOIN world_happiness_17
	ON world_happiness_16.country=world_happiness_17.country
-- JOIN free_ecos_4
-- 	ON world_happiness_17.country=free_ecos_4.WEBNAME
-- JOIN united_nations_transformed
-- 	ON free_eco1.WEBNAME=united_nations_transformed.country
	
	

