select count(*) as NumberOfMaleDead from Titanic
where survived = 0 and sex = 'male'