

-- EDA With SQL For Olympics Dataset


-- Get Glimpse about Data
SELECT * FROM olympics

-- Drop F1
alter table olympics
drop column F1

-- Get No of Medala for Each Type
-- Silver
select count(Medal) as no_silvers from olympics
where Medal = 'Silver' 
-- Bronze
select count(Medal) as no_bronze from olympics
where Medal = 'Bronze' 
-- Gold
select count(Medal) as no_gold from olympics
where Medal = 'Gold' 

select * from olympics

-- Get more info Using Gender ,Medal
select Athlete ,Discipline,NOC from olympics
where Event_gender = 'M' and Medal = 'Gold'

select Athlete ,Discipline,NOC from olympics
where Event_gender = 'W' and Medal = 'Gold'

select Athlete ,Discipline,NOC from olympics
where Event_gender = 'M' and Medal = 'Silver'

select Athlete ,Discipline,NOC from olympics
where Event_gender = 'W' and Medal = 'Silver'

select Athlete ,Discipline,NOC from olympics
where Event_gender = 'M' and Medal = 'Bronze'


-- Get female Athletes who won bronze medal
select Athlete ,Discipline,NOC from olympics
where Event_gender = 'W' and Medal = 'Bronze'

select * from olympics

-- Get no of medals in each Edition
select Count(Medal) as no_medals,Edition from olympics
group by Edition order by Edition desc

-- Get the most medal per each City
select City,max(Medal)  from olympics
group by City 

-- Get no_meadl_per_country
-- USA_Medals : 4335T | 2088G | 1195S | 1052B
select NOC,Count(Medal) no_meadl_per_country from olympics
-- where Medal='Bronze'
group by NOC 
having count(Medal) > 700
order by no_meadl_per_country desc

select * from olympics

-- Get More Info using Event,Edtion,Sport and Gender
select Athlete, Edition,Event,Event_gender,Medal from olympics
where Medal = 'Bronze' and Event = '100m' and Edition = '1896'

SELECT  Athlete FROM olympics
WHERE Sport = 'Football' AND Edition = '2008' AND Medal = 'GOLD'

SELECT COUNT(Edition) as no_Men_Women,Gender FROM olympics
GROUP BY Gender

-- Get Male Athletes who won gold medal in Aquatics Sport
SELECT Athlete FROM olympics
WHERE Sport = 'Aquatics' AND Medal = 'GolD' AND Gender = 'Men'

-- Get the Most Discipline Get Gold Medal
SELECT MAX(Discipline) FROM olympics
WHERE Medal =  'Gold'

--Get the most Athelte won Gold Medal
SELECT MAX(Athlete) FROM olympics
WHERE Medal = 'Gold'

--------------------------------------------------
-- And There is alot of questions that you can answer
---------------------------------------------------