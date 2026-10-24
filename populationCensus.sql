Select SUM(City.Population)
FROM City
JOIN Country
on City.CountryCode = Country.Code 
where Country.Continent = 'Asia'