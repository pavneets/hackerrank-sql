SELECT concat(Name, '(', substring(Occupation, 1,1), ')')
FROM Occupations 
ORDER by Name;
select concat('There are a total of ', count(Occupation), ' ', Lower(Occupation), 's.')
FROM Occupations 
GROUP by Occupation
ORDER by count(Occupation), Lower(Occupation);