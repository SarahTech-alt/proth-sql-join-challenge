-- Instructions: Use a combination of aggregates, joins, 
-- limit and group by to complete the following SQL queries. 
-- Each query should have 10 or less rows as a result.

-- 1. Display the total number of countries in the country table.
SELECT count(*) from "country";
`215`

-- 2. Display the entire world population (research SUM). 
SELECT sum("country"."population") FROM "country";
`7506964924`

-- 3. Displays the name and population for the 10 countries with the highest population.
SELECT "country"."name", "country"."population" FROM "country" 
ORDER BY "population" DESC LIMIT 10;

`China	1386395000
India	1339180127
United States	325719178
Indonesia	263991379
Brazil	209288278
Pakistan	197015955
Nigeria	190886311
Bangladesh	164669751
Russian Federation	144495044
Mexico	129163276`

-- 4. Displays the number of countries in each region.
SELECT "region"."name", count("region"."id") FROM "region"
JOIN "country" ON "country"."region_id" = "region"."id" GROUP BY "region"."name";
`East Asia & Pacific	37
Middle East & North Africa	21
Europe & Central Asia	58
Latin America & Caribbean	42
North America	3
Sub-Saharan Africa	48
South Asia	8`

-- 5. Displays the total population for each region.
SELECT "region"."name", sum("country"."population") FROM "region"
JOIN "country" ON "country"."region_id" = "region"."id" GROUP BY "region"."name";
`East Asia & Pacific	2290812990
Middle East & North Africa	444322417
Europe & Central Asia	915545801
Latin America & Caribbean	644137666
North America	362492702
Sub-Saharan Africa	1061264496
South Asia	1788388852`

-- 6. Display the name and sq km for the 10 countries with the most land area (sort by land area).
SELECT "country"."name", "land_area"."sq_km" FROM "country"
JOIN "land_area" ON "country"."country_code"="land_area"."country_code" ORDER BY "land_area"."sq_km" DESC LIMIT 10;
`Russian Federation	16376870
China	9388211
United States	9147420
Canada	9093510
Brazil	8358140
Australia	7682300
India	2973190
Argentina	2736690
Kazakhstan	2699700
Algeria	2381741`

-- Stretch Mode

-- 7. Display the total land area for each region sorted by land area (requires two joins). 


-- 8. Display the top 10 countries with the highest population density (greatest population per sq km).


-- 9. Display the population density for each region (sort by population density).


-- 10. Display the population density for the 10 countries with the largest land area.