select count(*) as SurvivedAndHaveSibling from Titanic 
where survived = 1 and SIBSP = 1