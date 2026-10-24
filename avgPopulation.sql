Select Country.Continent, FLOOR(AVG(City.Population)) as Average
FROM City
JOIN Country 
on City.CountryCode = Country.Code 
GROUP By Country.Continent
