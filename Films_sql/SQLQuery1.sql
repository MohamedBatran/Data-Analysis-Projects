
-- Discover Data
select * from films

-- Drop column F1
alter table films
drop column F1


-- Get The Max & MIn for Running Time
select max([Running time_(minutes)]) as max_RT from films 
select min([Running time_(minutes)])as min_RT from films 

-- Get The Top 5 films Running Time
select top 5([Running time_(minutes)]),Film from films
where [Running time_(minutes)] >= 191
order by [Running time_(minutes)] desc

-- Get The Buttom 5 films Running Time
select top 5([Running time_(minutes)]),Film from films
where [Running time_(minutes)] >= 81
order by [Running time_(minutes)] asc

select * from films

-- Get The Max & MIn for Running Time
select max(Count) as max_count from films 
select min(Count) as min_count from films  

-- Get The Top 5 films Count
select top 5(Count),Film from films
where Count <= 935
order by Count desc

-- Get The Buttom 5 films Count
select top 5(Count),Film from films
where Count >= 150
order by Count asc

select * from films

-- Get no Of films for each Year
select Year,count(Year) as no_films from films 
group by Year

-- Get Year for max Running Time & Count 
select Year from films
where [Running time_(minutes)] = 191

select Year from films
where Count = 935

-- Get Year for min Running Time & Count
select Year from films
where [Running time_(minutes)] = 81

select Year from films
where Count = 150

-- Get more info 
select Film , Year from films
where Count = 935

select Film , Year from films
where Count = 150

select Film , Year from films
where [Running time_(minutes)] = 191

select Film , Year from films
where [Running time_(minutes)] = 81

-- Get the Top film by count 
select Film from films
where Count = 935

-- Get the Buttom film by count 
select Film from films
where Count = 150

-- Get the Top film by Running Time 
select Film from films
where [Running time_(minutes)] = 191

-- Get the Buttom film by Running Time 
select Film from films
where [Running time_(minutes)] = 81


----------------------------------

-- Visualize The Data in Power BI

----------------------------------