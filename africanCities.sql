SELECT CITY.Name from CITY
JOIN COUNTRY
on CITY.CountryCode = COUNTRY.Code 
WHERE COUNTRY.Continent = 'Africa'