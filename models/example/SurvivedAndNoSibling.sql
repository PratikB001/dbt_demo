select count(*) as SurvivedAndNoSibling from Titanic 
where survived = 1 and SIBSP = 0