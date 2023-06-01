select count(*) as NumberOfFemaleDead from Titanic
where survived = 0 and sex = 'female'